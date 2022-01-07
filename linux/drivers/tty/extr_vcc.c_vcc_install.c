
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcc_port {struct tty_struct* tty; } ;
struct tty_struct {scalar_t__ index; struct tty_port* port; } ;
struct tty_port {int * ops; } ;
struct tty_driver {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 scalar_t__ VCC_MAX_PORTS ;
 int kfree (struct tty_port*) ;
 struct tty_port* kzalloc (int,int ) ;
 int pr_err (char*) ;
 int tty_port_init (struct tty_port*) ;
 int tty_standard_install (struct tty_driver*,struct tty_struct*) ;
 scalar_t__ unlikely (int) ;
 struct vcc_port* vcc_get (scalar_t__,int) ;
 int vcc_port_ops ;
 int vcc_put (struct vcc_port*,int) ;

__attribute__((used)) static int vcc_install(struct tty_driver *driver, struct tty_struct *tty)
{
 struct vcc_port *port_vcc;
 struct tty_port *port_tty;
 int ret;

 if (unlikely(!tty)) {
  pr_err("VCC: install: Invalid TTY handle\n");
  return -ENXIO;
 }

 if (tty->index >= VCC_MAX_PORTS)
  return -EINVAL;

 ret = tty_standard_install(driver, tty);
 if (ret)
  return ret;

 port_tty = kzalloc(sizeof(struct tty_port), GFP_KERNEL);
 if (!port_tty)
  return -ENOMEM;

 port_vcc = vcc_get(tty->index, 1);
 if (!port_vcc) {
  pr_err("VCC: install: Failed to find VCC port\n");
  tty->port = ((void*)0);
  kfree(port_tty);
  return -ENODEV;
 }

 tty_port_init(port_tty);
 port_tty->ops = &vcc_port_ops;
 tty->port = port_tty;

 port_vcc->tty = tty;

 vcc_put(port_vcc, 1);

 return 0;
}
