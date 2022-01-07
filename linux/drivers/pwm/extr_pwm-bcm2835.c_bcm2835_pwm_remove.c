
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct bcm2835_pwm {int chip; int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct bcm2835_pwm* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int bcm2835_pwm_remove(struct platform_device *pdev)
{
 struct bcm2835_pwm *pc = platform_get_drvdata(pdev);

 clk_disable_unprepare(pc->clk);

 return pwmchip_remove(&pc->chip);
}
