
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct TYPE_9__ {int pll; int wp; int core; int phy; int audio_playing_lock; int lock; struct platform_device* pdev; } ;


 int DSSERR (char*,...) ;
 int ENODEV ;
 int IRQF_ONESHOT ;
 int dev_set_drvdata (TYPE_1__*,TYPE_4__*) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int ,int ,char*,int *) ;
 int dss_debugfs_create_file (char*,int ) ;
 TYPE_4__ hdmi ;
 int hdmi5_core_init (struct platform_device*,int *) ;
 int hdmi_audio_register (TYPE_1__*) ;
 int hdmi_dump_regs ;
 int hdmi_init_output (struct platform_device*) ;
 int hdmi_irq_handler ;
 int hdmi_phy_init (struct platform_device*,int *) ;
 int hdmi_pll_init (struct platform_device*,int *,int *) ;
 int hdmi_pll_uninit (int *) ;
 int hdmi_probe_of (struct platform_device*) ;
 int hdmi_uninit_output (struct platform_device*) ;
 int hdmi_wp_init (struct platform_device*,int *) ;
 int mutex_init (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int pm_runtime_disable (TYPE_1__*) ;
 int pm_runtime_enable (TYPE_1__*) ;
 int spin_lock_init (int *) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int hdmi5_bind(struct device *dev, struct device *master, void *data)
{
 struct platform_device *pdev = to_platform_device(dev);
 int r;
 int irq;

 hdmi.pdev = pdev;
 dev_set_drvdata(&pdev->dev, &hdmi);

 mutex_init(&hdmi.lock);
 spin_lock_init(&hdmi.audio_playing_lock);

 if (pdev->dev.of_node) {
  r = hdmi_probe_of(pdev);
  if (r)
   return r;
 }

 r = hdmi_wp_init(pdev, &hdmi.wp);
 if (r)
  return r;

 r = hdmi_pll_init(pdev, &hdmi.pll, &hdmi.wp);
 if (r)
  return r;

 r = hdmi_phy_init(pdev, &hdmi.phy);
 if (r)
  goto err;

 r = hdmi5_core_init(pdev, &hdmi.core);
 if (r)
  goto err;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  DSSERR("platform_get_irq failed\n");
  r = -ENODEV;
  goto err;
 }

 r = devm_request_threaded_irq(&pdev->dev, irq,
   ((void*)0), hdmi_irq_handler,
   IRQF_ONESHOT, "OMAP HDMI", &hdmi.wp);
 if (r) {
  DSSERR("HDMI IRQ request failed\n");
  goto err;
 }

 pm_runtime_enable(&pdev->dev);

 hdmi_init_output(pdev);

 r = hdmi_audio_register(&pdev->dev);
 if (r) {
  DSSERR("Registering HDMI audio failed %d\n", r);
  hdmi_uninit_output(pdev);
  pm_runtime_disable(&pdev->dev);
  return r;
 }

 dss_debugfs_create_file("hdmi", hdmi_dump_regs);

 return 0;
err:
 hdmi_pll_uninit(&hdmi.pll);
 return r;
}
