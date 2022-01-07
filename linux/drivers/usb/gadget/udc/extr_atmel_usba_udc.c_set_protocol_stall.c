
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usba_udc {int dummy; } ;
struct usba_ep {int state; } ;


 int SET_STA ;
 int USBA_FORCE_STALL ;
 int WAIT_FOR_SETUP ;
 int usba_ep_writel (struct usba_ep*,int ,int ) ;

__attribute__((used)) static inline void set_protocol_stall(struct usba_udc *udc, struct usba_ep *ep)
{
 usba_ep_writel(ep, SET_STA, USBA_FORCE_STALL);
 ep->state = WAIT_FOR_SETUP;
}
