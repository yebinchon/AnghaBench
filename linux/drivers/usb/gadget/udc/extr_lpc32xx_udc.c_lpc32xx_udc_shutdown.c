
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct lpc32xx_udc {int dummy; } ;


 struct lpc32xx_udc* platform_get_drvdata (struct platform_device*) ;
 int pullup (struct lpc32xx_udc*,int ) ;

__attribute__((used)) static void lpc32xx_udc_shutdown(struct platform_device *dev)
{

 struct lpc32xx_udc *udc = platform_get_drvdata(dev);

 pullup(udc, 0);
}
