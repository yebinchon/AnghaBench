
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lpc32xx_udc {int ep0state; struct lpc32xx_ep* ep; } ;
struct lpc32xx_ep {int totalints; } ;



 int ECONNABORTED ;
 int EP_OUT ;
 int EP_SEL_EPN ;
 int EP_SEL_F ;
 int EP_SEL_ST ;
 int EP_SEL_STP ;

 int nuke (struct lpc32xx_ep*,int ) ;
 int udc_clearep_getsts (struct lpc32xx_udc*,int ) ;
 int udc_clrstall_hwep (struct lpc32xx_udc*,int ) ;
 int udc_ep0_out_req (struct lpc32xx_udc*) ;
 int udc_handle_ep0_setup (struct lpc32xx_udc*) ;

__attribute__((used)) static void udc_handle_ep0_out(struct lpc32xx_udc *udc)
{
 struct lpc32xx_ep *ep0 = &udc->ep[0];
 u32 epstatus;


 epstatus = udc_clearep_getsts(udc, EP_OUT);







 if (epstatus & EP_SEL_ST) {
  udc_clrstall_hwep(udc, EP_OUT);
  nuke(ep0, -ECONNABORTED);
  udc->ep0state = 128;
  return;
 }


 if (epstatus & EP_SEL_EPN)
  return;

 if (epstatus & EP_SEL_STP) {
  nuke(ep0, 0);
  udc->ep0state = 128;
 }


 if (epstatus & EP_SEL_F)

  switch (udc->ep0state) {
  case 128:
   udc_handle_ep0_setup(udc);
   break;

  case 129:
   udc_ep0_out_req(udc);
   break;

  default:

   nuke(ep0, -ECONNABORTED);
   udc->ep0state = 128;
  }
}
