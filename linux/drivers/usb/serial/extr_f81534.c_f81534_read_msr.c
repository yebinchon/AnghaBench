
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_serial_port {int dummy; } ;
struct f81534_port_private {int msr_lock; int shadow_msr; } ;


 int F81534_MODEM_STATUS_REG ;
 int f81534_get_port_register (struct usb_serial_port*,int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct f81534_port_private* usb_get_serial_port_data (struct usb_serial_port*) ;

__attribute__((used)) static int f81534_read_msr(struct usb_serial_port *port)
{
 struct f81534_port_private *port_priv = usb_get_serial_port_data(port);
 unsigned long flags;
 int status;
 u8 msr;


 status = f81534_get_port_register(port, F81534_MODEM_STATUS_REG, &msr);
 if (status)
  return status;


 spin_lock_irqsave(&port_priv->msr_lock, flags);
 port_priv->shadow_msr = msr;
 spin_unlock_irqrestore(&port_priv->msr_lock, flags);

 return 0;
}
