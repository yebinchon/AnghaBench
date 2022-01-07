
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct port* driver_data; } ;
struct port {int fifo_ul; } ;
struct nozomi {int dummy; } ;


 struct nozomi* get_dc_by_tty (struct tty_struct*) ;
 int kfifo_avail (int *) ;

__attribute__((used)) static int ntty_write_room(struct tty_struct *tty)
{
 struct port *port = tty->driver_data;
 int room = 4096;
 const struct nozomi *dc = get_dc_by_tty(tty);

 if (dc)
  room = kfifo_avail(&port->fifo_ul);

 return room;
}
