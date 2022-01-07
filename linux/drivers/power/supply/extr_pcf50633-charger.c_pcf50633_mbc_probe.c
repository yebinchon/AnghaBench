
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct power_supply_config {int attr_grp; struct pcf50633_mbc* drv_data; int num_supplicants; int supplied_to; } ;
struct TYPE_8__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct pcf50633_mbc {TYPE_3__* pcf; void* ac; void* usb; void* adapter; } ;
struct TYPE_9__ {int dev; TYPE_1__* pdata; } ;
struct TYPE_7__ {int num_batteries; int batteries; } ;


 int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (void*) ;
 int PCF50633_IRQ_ADPINS ;
 int PCF50633_IRQ_USBINS ;
 int PCF50633_MBCS1_ADAPTPRES ;
 int PCF50633_MBCS1_USBPRES ;
 int PCF50633_REG_MBCS1 ;
 int PTR_ERR (void*) ;
 int dev_err (int ,char*) ;
 TYPE_3__* dev_to_pcf50633 (int ) ;
 struct pcf50633_mbc* devm_kzalloc (TYPE_2__*,int,int ) ;
 int * mbc_irq_handlers ;
 int pcf50633_mbc_ac_desc ;
 int pcf50633_mbc_adapter_desc ;
 int pcf50633_mbc_irq_handler (int ,struct pcf50633_mbc*) ;
 int pcf50633_mbc_sysfs_groups ;
 int pcf50633_mbc_usb_desc ;
 int pcf50633_reg_read (TYPE_3__*,int ) ;
 int pcf50633_register_irq (TYPE_3__*,int ,int (*) (int ,struct pcf50633_mbc*),struct pcf50633_mbc*) ;
 int platform_set_drvdata (struct platform_device*,struct pcf50633_mbc*) ;
 void* power_supply_register (TYPE_2__*,int *,struct power_supply_config*) ;
 int power_supply_unregister (void*) ;

__attribute__((used)) static int pcf50633_mbc_probe(struct platform_device *pdev)
{
 struct power_supply_config psy_cfg = {};
 struct power_supply_config usb_psy_cfg;
 struct pcf50633_mbc *mbc;
 int i;
 u8 mbcs1;

 mbc = devm_kzalloc(&pdev->dev, sizeof(*mbc), GFP_KERNEL);
 if (!mbc)
  return -ENOMEM;

 platform_set_drvdata(pdev, mbc);
 mbc->pcf = dev_to_pcf50633(pdev->dev.parent);


 for (i = 0; i < ARRAY_SIZE(mbc_irq_handlers); i++)
  pcf50633_register_irq(mbc->pcf, mbc_irq_handlers[i],
     pcf50633_mbc_irq_handler, mbc);

 psy_cfg.supplied_to = mbc->pcf->pdata->batteries;
 psy_cfg.num_supplicants = mbc->pcf->pdata->num_batteries;
 psy_cfg.drv_data = mbc;


 mbc->adapter = power_supply_register(&pdev->dev,
          &pcf50633_mbc_adapter_desc,
          &psy_cfg);
 if (IS_ERR(mbc->adapter)) {
  dev_err(mbc->pcf->dev, "failed to register adapter\n");
  return PTR_ERR(mbc->adapter);
 }

 usb_psy_cfg = psy_cfg;
 usb_psy_cfg.attr_grp = pcf50633_mbc_sysfs_groups;

 mbc->usb = power_supply_register(&pdev->dev, &pcf50633_mbc_usb_desc,
      &usb_psy_cfg);
 if (IS_ERR(mbc->usb)) {
  dev_err(mbc->pcf->dev, "failed to register usb\n");
  power_supply_unregister(mbc->adapter);
  return PTR_ERR(mbc->usb);
 }

 mbc->ac = power_supply_register(&pdev->dev, &pcf50633_mbc_ac_desc,
     &psy_cfg);
 if (IS_ERR(mbc->ac)) {
  dev_err(mbc->pcf->dev, "failed to register ac\n");
  power_supply_unregister(mbc->adapter);
  power_supply_unregister(mbc->usb);
  return PTR_ERR(mbc->ac);
 }

 mbcs1 = pcf50633_reg_read(mbc->pcf, PCF50633_REG_MBCS1);
 if (mbcs1 & PCF50633_MBCS1_USBPRES)
  pcf50633_mbc_irq_handler(PCF50633_IRQ_USBINS, mbc);
 if (mbcs1 & PCF50633_MBCS1_ADAPTPRES)
  pcf50633_mbc_irq_handler(PCF50633_IRQ_ADPINS, mbc);

 return 0;
}
