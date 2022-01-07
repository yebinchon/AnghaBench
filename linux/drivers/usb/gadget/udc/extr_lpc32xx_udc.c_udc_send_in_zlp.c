
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_udc {int dummy; } ;
struct lpc32xx_ep {int hwep_num; } ;


 int udc_clearep_getsts (struct lpc32xx_udc*,int ) ;
 int udc_write_hwep (struct lpc32xx_udc*,int ,int *,int ) ;

void udc_send_in_zlp(struct lpc32xx_udc *udc, struct lpc32xx_ep *ep)
{

 udc_clearep_getsts(udc, ep->hwep_num);


 udc_write_hwep(udc, ep->hwep_num, ((void*)0), 0);
}
