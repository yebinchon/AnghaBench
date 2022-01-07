
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct gs_port* driver_data; } ;
struct gs_port {int port_lock; int push; int port_num; scalar_t__ port_usb; } ;


 int pr_vdebug (char*,int ) ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void gs_unthrottle(struct tty_struct *tty)
{
 struct gs_port *port = tty->driver_data;
 unsigned long flags;

 spin_lock_irqsave(&port->port_lock, flags);
 if (port->port_usb) {




  pr_vdebug("ttyGS%d: unthrottle\n", port->port_num);
  schedule_delayed_work(&port->push, 0);
 }
 spin_unlock_irqrestore(&port->port_lock, flags);
}
