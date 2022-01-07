
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int delta_msr_wait; } ;
struct TYPE_3__ {int rng; int dcd; int dsr; int cts; } ;
struct usb_serial_port {TYPE_2__ port; TYPE_1__ icount; } ;
struct qt2_port_private {int shadowMSR; int lock; } ;


 int UART_MSR_ANY_DELTA ;
 int UART_MSR_DCTS ;
 int UART_MSR_DDCD ;
 int UART_MSR_DDSR ;
 int UART_MSR_TERI ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct qt2_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void qt2_update_msr(struct usb_serial_port *port, unsigned char *ch)
{
 struct qt2_port_private *port_priv;
 u8 newMSR = (u8) *ch;
 unsigned long flags;

 port_priv = usb_get_serial_port_data(port);

 spin_lock_irqsave(&port_priv->lock, flags);
 port_priv->shadowMSR = newMSR;
 spin_unlock_irqrestore(&port_priv->lock, flags);

 if (newMSR & UART_MSR_ANY_DELTA) {

  if (newMSR & UART_MSR_DCTS)
   port->icount.cts++;
  if (newMSR & UART_MSR_DDSR)
   port->icount.dsr++;
  if (newMSR & UART_MSR_DDCD)
   port->icount.dcd++;
  if (newMSR & UART_MSR_TERI)
   port->icount.rng++;

  wake_up_interruptible(&port->port.delta_msr_wait);
 }
}
