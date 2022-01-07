
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_udc {int pullup_on; int (* udc_command ) (int ) ;scalar_t__ gpiod; } ;


 int PXA2XX_UDC_CMD_CONNECT ;
 int PXA2XX_UDC_CMD_DISCONNECT ;
 int gpiod_set_value (scalar_t__,int) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void dplus_pullup(struct pxa_udc *udc, int on)
{
 if (udc->gpiod) {
  gpiod_set_value(udc->gpiod, on);
 } else if (udc->udc_command) {
  if (on)
   udc->udc_command(PXA2XX_UDC_CMD_CONNECT);
  else
   udc->udc_command(PXA2XX_UDC_CMD_DISCONNECT);
 }
 udc->pullup_on = on;
}
