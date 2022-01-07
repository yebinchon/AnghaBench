
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mtk_disp_pwm {int clk_main; int clk_mm; int chip; } ;


 int clk_unprepare (int ) ;
 struct mtk_disp_pwm* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int mtk_disp_pwm_remove(struct platform_device *pdev)
{
 struct mtk_disp_pwm *mdp = platform_get_drvdata(pdev);
 int ret;

 ret = pwmchip_remove(&mdp->chip);
 clk_unprepare(mdp->clk_mm);
 clk_unprepare(mdp->clk_main);

 return ret;
}
