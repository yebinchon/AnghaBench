
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct ci_hdrc_msm {int core_clk; int iface_clk; int ci; } ;


 int ci_hdrc_remove_device (int ) ;
 int clk_disable_unprepare (int ) ;
 struct ci_hdrc_msm* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int ci_hdrc_msm_remove(struct platform_device *pdev)
{
 struct ci_hdrc_msm *ci = platform_get_drvdata(pdev);

 pm_runtime_disable(&pdev->dev);
 ci_hdrc_remove_device(ci->ci);
 clk_disable_unprepare(ci->iface_clk);
 clk_disable_unprepare(ci->core_clk);

 return 0;
}
