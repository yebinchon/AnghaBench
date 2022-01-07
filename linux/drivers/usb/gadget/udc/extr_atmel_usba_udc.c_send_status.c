
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usba_udc {int dummy; } ;
struct usba_ep {int state; } ;


 int CTL_ENB ;
 int SET_STA ;
 int STATUS_STAGE_IN ;
 int USBA_TX_COMPLETE ;
 int USBA_TX_PK_RDY ;
 int usba_ep_writel (struct usba_ep*,int ,int ) ;

__attribute__((used)) static void send_status(struct usba_udc *udc, struct usba_ep *ep)
{
 ep->state = STATUS_STAGE_IN;
 usba_ep_writel(ep, SET_STA, USBA_TX_PK_RDY);
 usba_ep_writel(ep, CTL_ENB, USBA_TX_COMPLETE);
}
