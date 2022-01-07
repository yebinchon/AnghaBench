
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_udc {int dummy; } ;


 int EP_IN ;
 int udc_write_hwep (struct lpc32xx_udc*,int ,int *,int ) ;

__attribute__((used)) static void udc_ep0_send_zlp(struct lpc32xx_udc *udc)
{
 udc_write_hwep(udc, EP_IN, ((void*)0), 0);
}
