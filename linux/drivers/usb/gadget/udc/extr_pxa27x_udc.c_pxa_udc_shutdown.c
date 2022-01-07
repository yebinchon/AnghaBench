
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_udc {int dummy; } ;
struct platform_device {int dummy; } ;


 int UDCCR ;
 int UDCCR_UDE ;
 struct pxa_udc* platform_get_drvdata (struct platform_device*) ;
 int udc_disable (struct pxa_udc*) ;
 int udc_readl (struct pxa_udc*,int ) ;

__attribute__((used)) static void pxa_udc_shutdown(struct platform_device *_dev)
{
 struct pxa_udc *udc = platform_get_drvdata(_dev);

 if (udc_readl(udc, UDCCR) & UDCCR_UDE)
  udc_disable(udc);
}
