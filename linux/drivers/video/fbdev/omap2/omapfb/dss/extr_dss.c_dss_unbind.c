
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ video2_pll; scalar_t__ video1_pll; } ;


 int component_unbind_all (int *,int *) ;
 TYPE_1__ dss ;
 int dss_initialized ;
 int dss_put_clocks () ;
 int dss_uninit_ports (struct platform_device*) ;
 int dss_video_pll_uninit (scalar_t__) ;
 int pm_runtime_disable (int *) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static void dss_unbind(struct device *dev)
{
 struct platform_device *pdev = to_platform_device(dev);

 dss_initialized = 0;

 component_unbind_all(&pdev->dev, ((void*)0));

 if (dss.video1_pll)
  dss_video_pll_uninit(dss.video1_pll);

 if (dss.video2_pll)
  dss_video_pll_uninit(dss.video2_pll);

 dss_uninit_ports(pdev);

 pm_runtime_disable(&pdev->dev);

 dss_put_clocks();
}
