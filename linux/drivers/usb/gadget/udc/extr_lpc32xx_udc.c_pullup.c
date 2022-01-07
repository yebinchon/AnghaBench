
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_udc {int pullup; int vbus; int enabled; int clocked; } ;


 int isp1301_pullup_enable (struct lpc32xx_udc*,int,int ) ;

__attribute__((used)) static void pullup(struct lpc32xx_udc *udc, int is_on)
{
 if (!udc->clocked)
  return;

 if (!udc->enabled || !udc->vbus)
  is_on = 0;

 if (is_on != udc->pullup)
  isp1301_pullup_enable(udc, is_on, 0);
}
