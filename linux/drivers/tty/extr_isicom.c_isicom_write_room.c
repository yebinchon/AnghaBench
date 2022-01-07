
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct isi_port* driver_data; } ;
struct isi_port {int xmit_cnt; } ;


 int SERIAL_XMIT_SIZE ;
 scalar_t__ isicom_paranoia_check (struct isi_port*,int ,char*) ;

__attribute__((used)) static int isicom_write_room(struct tty_struct *tty)
{
 struct isi_port *port = tty->driver_data;
 int free;

 if (isicom_paranoia_check(port, tty->name, "isicom_write_room"))
  return 0;

 free = SERIAL_XMIT_SIZE - port->xmit_cnt - 1;
 if (free < 0)
  free = 0;
 return free;
}
