
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct vcc_port* name; } ;
struct vcc_port {struct vcc_port* domain; TYPE_1__ vio; scalar_t__ removed; int * tty; } ;
struct tty_struct {struct vcc_port* port; int index; } ;


 int kfree (struct vcc_port*) ;
 int pr_err (char*) ;
 int tty_port_destroy (struct vcc_port*) ;
 scalar_t__ unlikely (int) ;
 struct vcc_port* vcc_get (int ,int) ;
 int vcc_put (struct vcc_port*,int) ;
 int vcc_table_remove (int ) ;

__attribute__((used)) static void vcc_cleanup(struct tty_struct *tty)
{
 struct vcc_port *port;

 if (unlikely(!tty)) {
  pr_err("VCC: cleanup: Invalid TTY handle\n");
  return;
 }

 port = vcc_get(tty->index, 1);
 if (port) {
  port->tty = ((void*)0);

  if (port->removed) {
   vcc_table_remove(tty->index);
   kfree(port->vio.name);
   kfree(port->domain);
   kfree(port);
  } else {
   vcc_put(port, 1);
  }
 }

 tty_port_destroy(tty->port);
 kfree(tty->port);
 tty->port = ((void*)0);
}
