
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct gs_port* driver_data; } ;
struct gserial {int (* disconnect ) (struct gserial*) ;} ;
struct TYPE_2__ {int count; int * tty; } ;
struct gs_port {int openclose; int port_lock; int close_wait; int port_num; TYPE_1__ port; int port_write_buf; struct gserial* port_usb; int drain_wait; } ;
struct file {int dummy; } ;


 int GS_CLOSE_TIMEOUT ;
 int HZ ;
 int WARN_ON (int) ;
 int gs_writes_finished (struct gs_port*) ;
 int kfifo_free (int *) ;
 scalar_t__ kfifo_len (int *) ;
 int kfifo_reset (int *) ;
 int pr_debug (char*,int ,struct tty_struct*,struct file*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct gserial*) ;
 int wait_event_interruptible_timeout (int ,int ,int) ;
 int wake_up (int *) ;

__attribute__((used)) static void gs_close(struct tty_struct *tty, struct file *file)
{
 struct gs_port *port = tty->driver_data;
 struct gserial *gser;

 spin_lock_irq(&port->port_lock);

 if (port->port.count != 1) {
  if (port->port.count == 0)
   WARN_ON(1);
  else
   --port->port.count;
  goto exit;
 }

 pr_debug("gs_close: ttyGS%d (%p,%p) ...\n", port->port_num, tty, file);




 port->openclose = 1;
 port->port.count = 0;

 gser = port->port_usb;
 if (gser && gser->disconnect)
  gser->disconnect(gser);




 if (kfifo_len(&port->port_write_buf) > 0 && gser) {
  spin_unlock_irq(&port->port_lock);
  wait_event_interruptible_timeout(port->drain_wait,
     gs_writes_finished(port),
     GS_CLOSE_TIMEOUT * HZ);
  spin_lock_irq(&port->port_lock);
  gser = port->port_usb;
 }





 if (gser == ((void*)0))
  kfifo_free(&port->port_write_buf);
 else
  kfifo_reset(&port->port_write_buf);

 port->port.tty = ((void*)0);

 port->openclose = 0;

 pr_debug("gs_close: ttyGS%d (%p,%p) done!\n",
   port->port_num, tty, file);

 wake_up(&port->close_wait);
exit:
 spin_unlock_irq(&port->port_lock);
}
