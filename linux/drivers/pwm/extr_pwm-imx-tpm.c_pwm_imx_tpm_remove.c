
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct imx_tpm_pwm_chip {int clk; int chip; } ;


 int clk_disable_unprepare (int ) ;
 struct imx_tpm_pwm_chip* platform_get_drvdata (struct platform_device*) ;
 int pwmchip_remove (int *) ;

__attribute__((used)) static int pwm_imx_tpm_remove(struct platform_device *pdev)
{
 struct imx_tpm_pwm_chip *tpm = platform_get_drvdata(pdev);
 int ret = pwmchip_remove(&tpm->chip);

 clk_disable_unprepare(tpm->clk);

 return ret;
}
