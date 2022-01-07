
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct hvc_struct* driver_data; } ;
struct hvc_struct {int outbuf_size; int n_outbuf; } ;



__attribute__((used)) static int hvc_write_room(struct tty_struct *tty)
{
 struct hvc_struct *hp = tty->driver_data;

 if (!hp)
  return 0;

 return hp->outbuf_size - hp->n_outbuf;
}
