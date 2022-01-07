
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcc_port {int lock; } ;
struct tty_struct {int index; } ;


 int ENODEV ;
 int ENXIO ;
 int VCC_CTL_BREAK ;
 int pr_err (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 struct vcc_port* vcc_get_ne (int ) ;
 int vcc_kick_tx (struct vcc_port*) ;
 int vcc_put (struct vcc_port*,int) ;
 scalar_t__ vcc_send_ctl (struct vcc_port*,int ) ;

__attribute__((used)) static int vcc_break_ctl(struct tty_struct *tty, int state)
{
 struct vcc_port *port;
 unsigned long flags;

 if (unlikely(!tty)) {
  pr_err("VCC: break_ctl: Invalid TTY handle\n");
  return -ENXIO;
 }

 port = vcc_get_ne(tty->index);
 if (unlikely(!port)) {
  pr_err("VCC: break_ctl: Failed to find VCC port\n");
  return -ENODEV;
 }


 if (state == 0) {
  vcc_put(port, 0);
  return 0;
 }

 spin_lock_irqsave(&port->lock, flags);

 if (vcc_send_ctl(port, VCC_CTL_BREAK) < 0)
  vcc_kick_tx(port);

 spin_unlock_irqrestore(&port->lock, flags);

 vcc_put(port, 0);

 return 0;
}
