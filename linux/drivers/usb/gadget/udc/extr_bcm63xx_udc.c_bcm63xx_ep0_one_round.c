
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_request {int dummy; } ;
struct bcm63xx_udc {int ep0state; struct usb_request* ep0_reply; int * ep0_request; int * iudma; int ep0_req_completed; scalar_t__ ep0_req_shutdown; scalar_t__ ep0_req_reset; } ;
typedef enum bcm63xx_ep0_state { ____Placeholder_bcm63xx_ep0_state } bcm63xx_ep0_state ;


 int BCM63XX_MAX_CTRL_PKT ;
 int EAGAIN ;
 size_t IUDMA_EP0_RXCHAN ;
 size_t IUDMA_EP0_TXCHAN ;
 int bcm63xx_ep0_complete (struct bcm63xx_udc*,struct usb_request*,int ) ;
 int bcm63xx_ep0_do_idle (struct bcm63xx_udc*) ;
 int bcm63xx_ep0_internal_request (struct bcm63xx_udc*,size_t,int ) ;
 int bcm63xx_ep0_map_write (struct bcm63xx_udc*,size_t,struct usb_request*) ;
 int bcm63xx_ep0_nuke_reply (struct bcm63xx_udc*,int) ;
 int bcm63xx_ep0_read_complete (struct bcm63xx_udc*) ;
 int iudma_reset_channel (struct bcm63xx_udc*,int *) ;

__attribute__((used)) static int bcm63xx_ep0_one_round(struct bcm63xx_udc *udc)
{
 enum bcm63xx_ep0_state ep0state = udc->ep0state;
 bool shutdown = udc->ep0_req_reset || udc->ep0_req_shutdown;

 switch (udc->ep0state) {
 case 129:

  bcm63xx_ep0_internal_request(udc, IUDMA_EP0_RXCHAN,
          BCM63XX_MAX_CTRL_PKT);
  ep0state = 136;
  break;
 case 136:
  return bcm63xx_ep0_do_idle(udc);
 case 134:
  if (udc->ep0_reply) {
   bcm63xx_ep0_map_write(udc, IUDMA_EP0_TXCHAN,
           udc->ep0_reply);
   ep0state = 135;
  } else if (shutdown) {
   ep0state = 129;
  }
  break;
 case 135: {







  if (udc->ep0_req_completed) {
   udc->ep0_reply = ((void*)0);
   bcm63xx_ep0_read_complete(udc);




   ep0state = 129;
  } else if (shutdown) {
   iudma_reset_channel(udc, &udc->iudma[IUDMA_EP0_TXCHAN]);
   bcm63xx_ep0_nuke_reply(udc, 1);
   ep0state = 129;
  }
  break;
 }
 case 131:

  if (udc->ep0_reply) {
   bcm63xx_ep0_map_write(udc, IUDMA_EP0_RXCHAN,
           udc->ep0_reply);
   ep0state = 132;
  } else if (shutdown) {
   ep0state = 129;
  }
  break;
 case 132: {

  if (udc->ep0_req_completed) {
   udc->ep0_reply = ((void*)0);
   bcm63xx_ep0_read_complete(udc);


   bcm63xx_ep0_internal_request(udc, IUDMA_EP0_TXCHAN, 0);
   ep0state = 130;
  } else if (shutdown) {
   iudma_reset_channel(udc, &udc->iudma[IUDMA_EP0_RXCHAN]);
   bcm63xx_ep0_nuke_reply(udc, 0);
   ep0state = 129;
  }
  break;
 }
 case 130:
  if (udc->ep0_req_completed) {
   bcm63xx_ep0_read_complete(udc);
   ep0state = 129;
  } else if (shutdown) {
   iudma_reset_channel(udc, &udc->iudma[IUDMA_EP0_TXCHAN]);
   udc->ep0_request = ((void*)0);
   ep0state = 129;
  }
  break;
 case 133: {
  struct usb_request *r = udc->ep0_reply;

  if (!r) {
   if (shutdown)
    ep0state = 136;
   break;
  }

  bcm63xx_ep0_complete(udc, r, 0);
  udc->ep0_reply = ((void*)0);
  ep0state = 136;
  break;
 }
 case 128:
  break;
 }

 if (udc->ep0state == ep0state)
  return -EAGAIN;

 udc->ep0state = ep0state;
 return 0;
}
