
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct isi_port* driver_data; } ;
struct isi_port {int xmit_cnt; } ;


 scalar_t__ isicom_paranoia_check (struct isi_port*,int ,char*) ;

__attribute__((used)) static int isicom_chars_in_buffer(struct tty_struct *tty)
{
 struct isi_port *port = tty->driver_data;
 if (isicom_paranoia_check(port, tty->name, "isicom_chars_in_buffer"))
  return 0;
 return port->xmit_cnt;
}
