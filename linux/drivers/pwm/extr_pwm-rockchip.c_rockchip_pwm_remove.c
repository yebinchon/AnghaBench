
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pwms; } ;
struct rockchip_pwm_chip {TYPE_1__ chip; int clk; int pclk; } ;
struct platform_device {int dummy; } ;


 int clk_disable (int ) ;
 int clk_unprepare (int ) ;
 struct rockchip_pwm_chip* platform_get_drvdata (struct platform_device*) ;
 scalar_t__ pwm_is_enabled (int ) ;
 int pwmchip_remove (TYPE_1__*) ;

__attribute__((used)) static int rockchip_pwm_remove(struct platform_device *pdev)
{
 struct rockchip_pwm_chip *pc = platform_get_drvdata(pdev);
 if (pwm_is_enabled(pc->chip.pwms))
  clk_disable(pc->clk);

 clk_unprepare(pc->pclk);
 clk_unprepare(pc->clk);

 return pwmchip_remove(&pc->chip);
}
