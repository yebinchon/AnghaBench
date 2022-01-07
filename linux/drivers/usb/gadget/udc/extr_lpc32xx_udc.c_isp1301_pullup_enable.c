
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpc32xx_udc {int pullup; int pullup_job; } ;


 int isp1301_pullup_set (struct lpc32xx_udc*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void isp1301_pullup_enable(struct lpc32xx_udc *udc, int en_pullup,
      int block)
{
 if (en_pullup == udc->pullup)
  return;

 udc->pullup = en_pullup;
 if (block)
  isp1301_pullup_set(udc);
 else

  schedule_work(&udc->pullup_job);
}
