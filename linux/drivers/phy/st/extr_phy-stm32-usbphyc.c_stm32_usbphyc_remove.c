
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_usbphyc {int clk; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 struct stm32_usbphyc* dev_get_drvdata (int *) ;

__attribute__((used)) static int stm32_usbphyc_remove(struct platform_device *pdev)
{
 struct stm32_usbphyc *usbphyc = dev_get_drvdata(&pdev->dev);

 clk_disable_unprepare(usbphyc->clk);

 return 0;
}
