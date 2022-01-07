
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lp; } ;
struct vcc_port {TYPE_1__ vio; } ;
struct tty_struct {int count; TYPE_2__* port; int index; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int ops; } ;


 int EBUSY ;
 int ENODEV ;
 int ENXIO ;
 int EPIPE ;
 int pr_err (char*) ;
 int tty_port_open (TYPE_2__*,struct tty_struct*,struct file*) ;
 scalar_t__ unlikely (int) ;
 struct vcc_port* vcc_get_ne (int ) ;
 int vcc_put (struct vcc_port*,int) ;
 int vccdbgl (int ) ;

__attribute__((used)) static int vcc_open(struct tty_struct *tty, struct file *vcc_file)
{
 struct vcc_port *port;

 if (unlikely(!tty)) {
  pr_err("VCC: open: Invalid TTY handle\n");
  return -ENXIO;
 }

 if (tty->count > 1)
  return -EBUSY;

 port = vcc_get_ne(tty->index);
 if (unlikely(!port)) {
  pr_err("VCC: open: Failed to find VCC port\n");
  return -ENODEV;
 }

 if (unlikely(!port->vio.lp)) {
  pr_err("VCC: open: LDC channel not configured\n");
  vcc_put(port, 0);
  return -EPIPE;
 }
 vccdbgl(port->vio.lp);

 vcc_put(port, 0);

 if (unlikely(!tty->port)) {
  pr_err("VCC: open: TTY port not found\n");
  return -ENXIO;
 }

 if (unlikely(!tty->port->ops)) {
  pr_err("VCC: open: TTY ops not defined\n");
  return -ENXIO;
 }

 return tty_port_open(tty->port, tty, vcc_file);
}
