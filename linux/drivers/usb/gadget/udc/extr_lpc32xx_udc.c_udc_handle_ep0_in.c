
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_udc {scalar_t__ ep0state; struct lpc32xx_ep* ep; } ;
struct lpc32xx_ep {int totalints; } ;


 scalar_t__ DATA_IN ;
 int ECONNABORTED ;
 int EP_IN ;
 int EP_SEL_F ;
 int EP_SEL_ST ;
 void* WAIT_FOR_SETUP ;
 int nuke (struct lpc32xx_ep*,int ) ;
 int udc_clearep_getsts (struct lpc32xx_udc*,int ) ;
 int udc_clrstall_hwep (struct lpc32xx_udc*,int ) ;
 int udc_ep0_in_req (struct lpc32xx_udc*) ;

__attribute__((used)) static void udc_handle_ep0_in(struct lpc32xx_udc *udc)
{
 struct lpc32xx_ep *ep0 = &udc->ep[0];
 u32 epstatus;


 epstatus = udc_clearep_getsts(udc, EP_IN);






 if (epstatus & EP_SEL_ST) {
  udc_clrstall_hwep(udc, EP_IN);
  nuke(ep0, -ECONNABORTED);
  udc->ep0state = WAIT_FOR_SETUP;
  return;
 }


 if (!(epstatus & EP_SEL_F)) {

  if (udc->ep0state == DATA_IN)
   udc_ep0_in_req(udc);
  else {

   nuke(ep0, -ECONNABORTED);
   udc->ep0state = WAIT_FOR_SETUP;
  }
 }
}
