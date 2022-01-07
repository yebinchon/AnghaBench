
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_pwm_chip {int pclk; int chip; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct zx_pwm_chip* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int zx_pwm_remove(struct platform_device *pdev)
{
 struct zx_pwm_chip *zpc = platform_get_drvdata(pdev);
 int ret;

 ret = pwmchip_remove(&zpc->chip);
 clk_disable_unprepare(zpc->pclk);

 return ret;
}
