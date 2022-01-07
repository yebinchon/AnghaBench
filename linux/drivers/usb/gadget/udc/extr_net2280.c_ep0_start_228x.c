
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net2280 {int softconnect; TYPE_3__* usb; TYPE_2__* regs; TYPE_1__* epregs; } ;
struct TYPE_6__ {int usbctl; int stdrsp; } ;
struct TYPE_5__ {int pciirqenb1; int pciirqenb0; } ;
struct TYPE_4__ {int ep_rsp; } ;


 int BIT (int ) ;
 int CLEAR_CONTROL_STATUS_PHASE_HANDSHAKE ;
 int CLEAR_EP_HIDE_STATUS_PHASE ;
 int CLEAR_NAK_OUT_PACKETS ;
 int DEVICE_SET_CLEAR_DEVICE_REMOTE_WAKEUP ;
 int ENDPOINT_0_INTERRUPT_ENABLE ;
 int GET_DEVICE_STATUS ;
 int GET_INTERFACE_STATUS ;
 int PCI_INTERRUPT_ENABLE ;
 int PCI_MASTER_ABORT_RECEIVED_INTERRUPT_ENABLE ;
 int PCI_RETRY_ABORT_INTERRUPT_ENABLE ;
 int PCI_TARGET_ABORT_RECEIVED_INTERRUPT_ENABLE ;
 int REMOTE_WAKEUP_SUPPORT ;
 int ROOT_PORT_RESET_INTERRUPT_ENABLE ;
 int SELF_POWERED_STATUS ;
 int SELF_POWERED_USB_DEVICE ;
 int SETUP_PACKET_INTERRUPT_ENABLE ;
 int SET_ADDRESS ;
 int SET_TEST_MODE ;
 int SUSPEND_REQUEST_CHANGE_INTERRUPT_ENABLE ;
 int USB_DETECT_ENABLE ;
 int USB_ROOT_PORT_WAKEUP_ENABLE ;
 int VBUS_INTERRUPT_ENABLE ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void ep0_start_228x(struct net2280 *dev)
{
 writel(BIT(CLEAR_EP_HIDE_STATUS_PHASE) |
  BIT(CLEAR_NAK_OUT_PACKETS) |
  BIT(CLEAR_CONTROL_STATUS_PHASE_HANDSHAKE),
  &dev->epregs[0].ep_rsp);







 writel(BIT(SET_TEST_MODE) |
  BIT(SET_ADDRESS) |
  BIT(DEVICE_SET_CLEAR_DEVICE_REMOTE_WAKEUP) |
  BIT(GET_DEVICE_STATUS) |
  BIT(GET_INTERFACE_STATUS),
  &dev->usb->stdrsp);
 writel(BIT(USB_ROOT_PORT_WAKEUP_ENABLE) |
  BIT(SELF_POWERED_USB_DEVICE) |
  BIT(REMOTE_WAKEUP_SUPPORT) |
  (dev->softconnect << USB_DETECT_ENABLE) |
  BIT(SELF_POWERED_STATUS),
  &dev->usb->usbctl);


 writel(BIT(SETUP_PACKET_INTERRUPT_ENABLE) |
  BIT(ENDPOINT_0_INTERRUPT_ENABLE),
  &dev->regs->pciirqenb0);
 writel(BIT(PCI_INTERRUPT_ENABLE) |
  BIT(PCI_MASTER_ABORT_RECEIVED_INTERRUPT_ENABLE) |
  BIT(PCI_TARGET_ABORT_RECEIVED_INTERRUPT_ENABLE) |
  BIT(PCI_RETRY_ABORT_INTERRUPT_ENABLE) |
  BIT(VBUS_INTERRUPT_ENABLE) |
  BIT(ROOT_PORT_RESET_INTERRUPT_ENABLE) |
  BIT(SUSPEND_REQUEST_CHANGE_INTERRUPT_ENABLE),
  &dev->regs->pciirqenb1);


 (void) readl(&dev->usb->usbctl);
}
