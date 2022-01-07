
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct brcmstb_pwm {int clk; int chip; } ;


 int clk_disable_unprepare (int ) ;
 struct brcmstb_pwm* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int brcmstb_pwm_remove(struct platform_device *pdev)
{
 struct brcmstb_pwm *p = platform_get_drvdata(pdev);
 int ret;

 ret = pwmchip_remove(&p->chip);
 clk_disable_unprepare(p->clk);

 return ret;
}
