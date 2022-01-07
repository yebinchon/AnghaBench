
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_hdmi_audio_pdata {int version; int * ops; int audio_dma_addr; struct device* dev; } ;
struct device {int dummy; } ;
typedef int pdata ;
struct TYPE_3__ {int base; } ;
struct TYPE_4__ {TYPE_1__ wp; int wp_idlemode; int audio_pdev; } ;


 int HDMI_WP_SYSCONFIG ;
 scalar_t__ IS_ERR (int ) ;
 int PLATFORM_DEVID_AUTO ;
 int PTR_ERR (int ) ;
 int REG_GET (int ,int ,int,int) ;
 TYPE_2__ hdmi ;
 int hdmi_audio_ops ;
 int hdmi_runtime_get () ;
 int hdmi_runtime_put () ;
 int hdmi_wp_get_audio_dma_addr (TYPE_1__*) ;
 int platform_device_register_data (struct device*,char*,int ,struct omap_hdmi_audio_pdata*,int) ;

__attribute__((used)) static int hdmi_audio_register(struct device *dev)
{
 struct omap_hdmi_audio_pdata pdata = {
  .dev = dev,
  .version = 5,
  .audio_dma_addr = hdmi_wp_get_audio_dma_addr(&hdmi.wp),
  .ops = &hdmi_audio_ops,
 };

 hdmi.audio_pdev = platform_device_register_data(
  dev, "omap-hdmi-audio", PLATFORM_DEVID_AUTO,
  &pdata, sizeof(pdata));

 if (IS_ERR(hdmi.audio_pdev))
  return PTR_ERR(hdmi.audio_pdev);

 hdmi_runtime_get();
 hdmi.wp_idlemode =
  REG_GET(hdmi.wp.base, HDMI_WP_SYSCONFIG, 3, 2);
 hdmi_runtime_put();

 return 0;
}
