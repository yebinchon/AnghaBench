
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_imx1_chip {int chip; } ;
struct platform_device {int dummy; } ;


 struct pwm_imx1_chip* platform_get_drvdata (struct platform_device*) ;
 int pwm_imx1_clk_disable_unprepare (int *) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int pwm_imx1_remove(struct platform_device *pdev)
{
 struct pwm_imx1_chip *imx = platform_get_drvdata(pdev);

 pwm_imx1_clk_disable_unprepare(&imx->chip);

 return pwmchip_remove(&imx->chip);
}
