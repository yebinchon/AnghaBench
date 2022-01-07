
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct msm_pinctrl {int restart_nb; int chip; } ;


 int gpiochip_remove (int *) ;
 struct msm_pinctrl* platform_get_drvdata (struct platform_device*) ;
 int unregister_restart_handler (int *) ;

int msm_pinctrl_remove(struct platform_device *pdev)
{
 struct msm_pinctrl *pctrl = platform_get_drvdata(pdev);

 gpiochip_remove(&pctrl->chip);

 unregister_restart_handler(&pctrl->restart_nb);

 return 0;
}
