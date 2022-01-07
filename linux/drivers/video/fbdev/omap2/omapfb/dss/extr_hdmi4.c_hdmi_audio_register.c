
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_hdmi_audio_pdata {int version; int * ops; int audio_dma_addr; struct device* dev; } ;
struct device {int dummy; } ;
typedef int pdata ;
struct TYPE_2__ {int audio_pdev; int wp; } ;


 int PLATFORM_DEVID_AUTO ;
 int PTR_ERR_OR_ZERO (int ) ;
 TYPE_1__ hdmi ;
 int hdmi_audio_ops ;
 int hdmi_wp_get_audio_dma_addr (int *) ;
 int platform_device_register_data (struct device*,char*,int ,struct omap_hdmi_audio_pdata*,int) ;

__attribute__((used)) static int hdmi_audio_register(struct device *dev)
{
 struct omap_hdmi_audio_pdata pdata = {
  .dev = dev,
  .version = 4,
  .audio_dma_addr = hdmi_wp_get_audio_dma_addr(&hdmi.wp),
  .ops = &hdmi_audio_ops,
 };

 hdmi.audio_pdev = platform_device_register_data(
  dev, "omap-hdmi-audio", PLATFORM_DEVID_AUTO,
  &pdata, sizeof(pdata));

 return PTR_ERR_OR_ZERO(hdmi.audio_pdev);
}
