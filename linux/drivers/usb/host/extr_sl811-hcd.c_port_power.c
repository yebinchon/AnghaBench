
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int controller; } ;
struct usb_hcd {TYPE_2__ self; int state; } ;
struct sl811 {int port1; int irq_enable; int ctrl1; TYPE_1__* board; } ;
struct TYPE_3__ {int (* reset ) (int ) ;int (* port_power ) (int ,int) ;} ;


 int HC_STATE_HALT ;
 int SL11H_CTL1MASK_SE0 ;
 int SL11H_CTLREG1 ;
 int SL11H_INTMASK_INSRMV ;
 int SL11H_IRQ_ENABLE ;
 int SL11H_IRQ_STATUS ;
 int SL811HS_CTL2_INIT ;
 int SL811HS_CTLREG2 ;
 int USB_PORT_STAT_POWER ;
 int dev_dbg (int ,char*,char*) ;
 int mdelay (int) ;
 struct usb_hcd* sl811_to_hcd (struct sl811*) ;
 int sl811_write (struct sl811*,int ,int ) ;
 int stub1 (int ,int) ;
 int stub2 (int ) ;

__attribute__((used)) static void port_power(struct sl811 *sl811, int is_on)
{
 struct usb_hcd *hcd = sl811_to_hcd(sl811);


 if (is_on) {
  if (sl811->port1 & USB_PORT_STAT_POWER)
   return;

  sl811->port1 = USB_PORT_STAT_POWER;
  sl811->irq_enable = SL11H_INTMASK_INSRMV;
 } else {
  sl811->port1 = 0;
  sl811->irq_enable = 0;
  hcd->state = HC_STATE_HALT;
 }
 sl811->ctrl1 = 0;
 sl811_write(sl811, SL11H_IRQ_ENABLE, 0);
 sl811_write(sl811, SL11H_IRQ_STATUS, ~0);

 if (sl811->board && sl811->board->port_power) {

  dev_dbg(hcd->self.controller, "power %s\n",
   is_on ? "on" : "off");
  sl811->board->port_power(hcd->self.controller, is_on);
 }


 if (sl811->board && sl811->board->reset)
  sl811->board->reset(hcd->self.controller);
 else {
  sl811_write(sl811, SL11H_CTLREG1, SL11H_CTL1MASK_SE0);
  mdelay(20);
 }

 sl811_write(sl811, SL11H_IRQ_ENABLE, 0);
 sl811_write(sl811, SL11H_CTLREG1, sl811->ctrl1);
 sl811_write(sl811, SL811HS_CTLREG2, SL811HS_CTL2_INIT);
 sl811_write(sl811, SL11H_IRQ_ENABLE, sl811->irq_enable);


}
