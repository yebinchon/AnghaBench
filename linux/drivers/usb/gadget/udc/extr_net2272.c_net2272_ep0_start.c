
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net2272_ep {int dummy; } ;
struct net2272 {int softconnect; struct net2272_ep* ep; } ;


 int ALT_NAK_OUT_PACKETS ;
 int CONTROL_STATUS_PHASE_HANDSHAKE ;
 int DMA_DONE_INTERRUPT_ENABLE ;
 int ENDPOINT_0_INTERRUPT_ENABLE ;
 int EP_RSPCLR ;
 int EP_RSPSET ;
 int HIDE_STATUS_PHASE ;
 int IO_WAKEUP_ENABLE ;
 int IRQENB0 ;
 int IRQENB1 ;
 int NAK_OUT_PACKETS_MODE ;
 int ROOT_PORT_RESET_INTERRUPT_ENABLE ;
 int SETUP_PACKET_INTERRUPT_ENABLE ;
 int SUSPEND_REQUEST_CHANGE_INTERRUPT_ENABLE ;
 int USBCTL0 ;
 int USB_DETECT_ENABLE ;
 int USB_ROOT_PORT_WAKEUP_ENABLE ;
 int VBUS_INTERRUPT_ENABLE ;
 int net2272_ep_write (struct net2272_ep*,int ,int) ;
 int net2272_write (struct net2272*,int ,int) ;

__attribute__((used)) static void
net2272_ep0_start(struct net2272 *dev)
{
 struct net2272_ep *ep0 = &dev->ep[0];

 net2272_ep_write(ep0, EP_RSPSET,
  (1 << NAK_OUT_PACKETS_MODE) |
  (1 << ALT_NAK_OUT_PACKETS));
 net2272_ep_write(ep0, EP_RSPCLR,
  (1 << HIDE_STATUS_PHASE) |
  (1 << CONTROL_STATUS_PHASE_HANDSHAKE));
 net2272_write(dev, USBCTL0,
  (dev->softconnect << USB_DETECT_ENABLE) |
  (1 << USB_ROOT_PORT_WAKEUP_ENABLE) |
  (1 << IO_WAKEUP_ENABLE));
 net2272_write(dev, IRQENB0,
  (1 << SETUP_PACKET_INTERRUPT_ENABLE) |
  (1 << ENDPOINT_0_INTERRUPT_ENABLE) |
  (1 << DMA_DONE_INTERRUPT_ENABLE));
 net2272_write(dev, IRQENB1,
  (1 << VBUS_INTERRUPT_ENABLE) |
  (1 << ROOT_PORT_RESET_INTERRUPT_ENABLE) |
  (1 << SUSPEND_REQUEST_CHANGE_INTERRUPT_ENABLE));
}
