
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcc_port {int dummy; } ;
struct tty_struct {int port; int index; } ;


 int pr_err (char*) ;
 int tty_port_hangup (int ) ;
 scalar_t__ unlikely (int) ;
 struct vcc_port* vcc_get_ne (int ) ;
 int vcc_ldc_hup (struct vcc_port*) ;
 int vcc_put (struct vcc_port*,int) ;

__attribute__((used)) static void vcc_hangup(struct tty_struct *tty)
{
 struct vcc_port *port;

 if (unlikely(!tty)) {
  pr_err("VCC: hangup: Invalid TTY handle\n");
  return;
 }

 port = vcc_get_ne(tty->index);
 if (unlikely(!port)) {
  pr_err("VCC: hangup: Failed to find VCC port\n");
  return;
 }

 if (unlikely(!tty->port)) {
  pr_err("VCC: hangup: TTY port not found\n");
  vcc_put(port, 0);
  return;
 }

 vcc_ldc_hup(port);

 vcc_put(port, 0);

 tty_port_hangup(tty->port);
}
