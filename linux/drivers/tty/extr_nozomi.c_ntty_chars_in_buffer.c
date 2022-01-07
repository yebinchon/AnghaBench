
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct port* driver_data; } ;
struct port {int fifo_ul; } ;
struct nozomi {int dummy; } ;
typedef int s32 ;


 struct nozomi* get_dc_by_tty (struct tty_struct*) ;
 int kfifo_len (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static s32 ntty_chars_in_buffer(struct tty_struct *tty)
{
 struct port *port = tty->driver_data;
 struct nozomi *dc = get_dc_by_tty(tty);
 s32 rval = 0;

 if (unlikely(!dc || !port)) {
  goto exit_in_buffer;
 }

 rval = kfifo_len(&port->fifo_ul);

exit_in_buffer:
 return rval;
}
