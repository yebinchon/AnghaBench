
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int pll; scalar_t__ audio_pdev; } ;


 TYPE_1__ hdmi ;
 int hdmi_pll_uninit (int *) ;
 int hdmi_uninit_output (struct platform_device*) ;
 int platform_device_unregister (scalar_t__) ;
 int pm_runtime_disable (int *) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static void hdmi4_unbind(struct device *dev, struct device *master, void *data)
{
 struct platform_device *pdev = to_platform_device(dev);

 if (hdmi.audio_pdev)
  platform_device_unregister(hdmi.audio_pdev);

 hdmi_uninit_output(pdev);

 hdmi_pll_uninit(&hdmi.pll);

 pm_runtime_disable(&pdev->dev);
}
