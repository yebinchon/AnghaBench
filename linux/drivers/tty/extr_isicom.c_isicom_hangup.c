
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int name; struct isi_port* driver_data; } ;
struct isi_port {int port; } ;


 scalar_t__ isicom_paranoia_check (struct isi_port*,int ,char*) ;
 int tty_port_hangup (int *) ;

__attribute__((used)) static void isicom_hangup(struct tty_struct *tty)
{
 struct isi_port *port = tty->driver_data;

 if (isicom_paranoia_check(port, tty->name, "isicom_hangup"))
  return;
 tty_port_hangup(&port->port);
}
