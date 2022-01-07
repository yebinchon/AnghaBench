
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; } ;
struct dwc3 {int setup_packet_pending; int connected; TYPE_1__ gadget; int regs; } ;


 int DWC3_DCTL ;
 int DWC3_DCTL_INITU1ENA ;
 int DWC3_DCTL_INITU2ENA ;
 int USB_SPEED_UNKNOWN ;
 int USB_STATE_NOTATTACHED ;
 int dwc3_disconnect_gadget (struct dwc3*) ;
 int dwc3_readl (int ,int ) ;
 int dwc3_writel (int ,int ,int) ;
 int usb_gadget_set_state (TYPE_1__*,int ) ;

__attribute__((used)) static void dwc3_gadget_disconnect_interrupt(struct dwc3 *dwc)
{
 int reg;

 reg = dwc3_readl(dwc->regs, DWC3_DCTL);
 reg &= ~DWC3_DCTL_INITU1ENA;
 dwc3_writel(dwc->regs, DWC3_DCTL, reg);

 reg &= ~DWC3_DCTL_INITU2ENA;
 dwc3_writel(dwc->regs, DWC3_DCTL, reg);

 dwc3_disconnect_gadget(dwc);

 dwc->gadget.speed = USB_SPEED_UNKNOWN;
 dwc->setup_packet_pending = 0;
 usb_gadget_set_state(&dwc->gadget, USB_STATE_NOTATTACHED);

 dwc->connected = 0;
}
