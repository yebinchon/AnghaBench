
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net2280 {int wakeup_enable; int softconnect; TYPE_3__* usb; TYPE_2__* regs; TYPE_1__* epregs; scalar_t__ bug7734_patched; } ;
struct TYPE_6__ {int usbctl; int stdrsp; } ;
struct TYPE_5__ {int pciirqenb1; int pciirqenb0; } ;
struct TYPE_4__ {int ep_rsp; } ;


 int BIT (int ) ;
 int CLEAR_NAK_OUT_PACKETS_MODE ;
 int DEVICE_REMOTE_WAKEUP_ENABLE ;
 int ENDPOINT_0_INTERRUPT_ENABLE ;
 int GET_DEVICE_STATUS ;
 int GET_INTERFACE_STATUS ;
 int PCI_INTERRUPT_ENABLE ;
 int ROOT_PORT_RESET_INTERRUPT_ENABLE ;
 int SETUP_PACKET_INTERRUPT_ENABLE ;
 int SET_ADDRESS ;
 int SET_EP_HIDE_STATUS_PHASE ;
 int SET_ISOCHRONOUS_DELAY ;
 int SET_SEL ;
 int SET_TEST_MODE ;
 int SUSPEND_REQUEST_CHANGE_INTERRUPT_ENABLE ;
 int USB_DETECT_ENABLE ;
 int USB_ROOT_PORT_WAKEUP_ENABLE ;
 int VBUS_INTERRUPT_ENABLE ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void ep0_start_338x(struct net2280 *dev)
{

 if (dev->bug7734_patched)
  writel(BIT(CLEAR_NAK_OUT_PACKETS_MODE) |
         BIT(SET_EP_HIDE_STATUS_PHASE),
         &dev->epregs[0].ep_rsp);







 writel(BIT(SET_ISOCHRONOUS_DELAY) |
        BIT(SET_SEL) |
        BIT(SET_TEST_MODE) |
        BIT(SET_ADDRESS) |
        BIT(GET_INTERFACE_STATUS) |
        BIT(GET_DEVICE_STATUS),
  &dev->usb->stdrsp);
 dev->wakeup_enable = 1;
 writel(BIT(USB_ROOT_PORT_WAKEUP_ENABLE) |
        (dev->softconnect << USB_DETECT_ENABLE) |
        BIT(DEVICE_REMOTE_WAKEUP_ENABLE),
        &dev->usb->usbctl);


 writel(BIT(SETUP_PACKET_INTERRUPT_ENABLE) |
        BIT(ENDPOINT_0_INTERRUPT_ENABLE),
        &dev->regs->pciirqenb0);
 writel(BIT(PCI_INTERRUPT_ENABLE) |
        BIT(ROOT_PORT_RESET_INTERRUPT_ENABLE) |
        BIT(SUSPEND_REQUEST_CHANGE_INTERRUPT_ENABLE) |
        BIT(VBUS_INTERRUPT_ENABLE),
        &dev->regs->pciirqenb1);


 (void)readl(&dev->usb->usbctl);
}
