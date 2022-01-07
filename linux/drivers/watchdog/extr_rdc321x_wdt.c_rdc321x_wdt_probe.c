
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; } ;
struct rdc321x_wdt_pdata {int sb_pdev; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int default_ticks; int timer; int inuse; scalar_t__ queue; int stop; int base_reg; int sb_pdev; int lock; } ;


 int ENODEV ;
 int IORESOURCE_IO ;
 int RDC_WDT_RST ;
 int clear_bit (int ,int *) ;
 int dev_err (int *,char*) ;
 struct rdc321x_wdt_pdata* dev_get_platdata (int *) ;
 int dev_info (int *,char*) ;
 int init_completion (int *) ;
 int misc_register (int *) ;
 int pci_write_config_dword (int ,int ,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 TYPE_1__ rdc321x_wdt_device ;
 int rdc321x_wdt_misc ;
 int rdc321x_wdt_trigger ;
 int spin_lock_init (int *) ;
 int ticks ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int rdc321x_wdt_probe(struct platform_device *pdev)
{
 int err;
 struct resource *r;
 struct rdc321x_wdt_pdata *pdata;

 pdata = dev_get_platdata(&pdev->dev);
 if (!pdata) {
  dev_err(&pdev->dev, "no platform data supplied\n");
  return -ENODEV;
 }

 r = platform_get_resource_byname(pdev, IORESOURCE_IO, "wdt-reg");
 if (!r) {
  dev_err(&pdev->dev, "failed to get wdt-reg resource\n");
  return -ENODEV;
 }

 rdc321x_wdt_device.sb_pdev = pdata->sb_pdev;
 rdc321x_wdt_device.base_reg = r->start;

 err = misc_register(&rdc321x_wdt_misc);
 if (err < 0) {
  dev_err(&pdev->dev, "misc_register failed\n");
  return err;
 }

 spin_lock_init(&rdc321x_wdt_device.lock);


 pci_write_config_dword(rdc321x_wdt_device.sb_pdev,
    rdc321x_wdt_device.base_reg, RDC_WDT_RST);

 init_completion(&rdc321x_wdt_device.stop);
 rdc321x_wdt_device.queue = 0;

 clear_bit(0, &rdc321x_wdt_device.inuse);

 timer_setup(&rdc321x_wdt_device.timer, rdc321x_wdt_trigger, 0);

 rdc321x_wdt_device.default_ticks = ticks;

 dev_info(&pdev->dev, "watchdog init success\n");

 return 0;
}
