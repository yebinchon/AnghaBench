
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct rtc_plat_data {scalar_t__ irq; TYPE_1__* rtc; int lock; TYPE_1__* ioaddr; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; int name; } ;
struct nvmem_config {char* name; int word_size; int stride; int * priv; int reg_write; int reg_read; int size; } ;
struct TYPE_8__ {int nvram_old_abi; int * ops; } ;


 int DS1511_BLF1 ;
 int DS1511_BME ;
 int DS1511_RAM_MAX ;
 int DS1511_WD_MSEC ;
 int DS1511_WD_SEC ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int RTC_CMD ;
 int RTC_CMD1 ;
 int dev_warn (int *,char*) ;
 TYPE_1__* devm_ioremap_resource (int *,struct resource*) ;
 struct rtc_plat_data* devm_kzalloc (int *,int,int ) ;
 scalar_t__ devm_request_irq (int *,scalar_t__,int ,int ,int ,struct platform_device*) ;
 TYPE_1__* devm_rtc_allocate_device (int *) ;
 TYPE_1__* ds1511_base ;
 int ds1511_interrupt ;
 int ds1511_nvram_read ;
 int ds1511_nvram_write ;
 int ds1511_rtc_ops ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rtc_plat_data*) ;
 int rtc_enable_update () ;
 int rtc_nvmem_register (TYPE_1__*,struct nvmem_config*) ;
 int rtc_read (int ) ;
 int rtc_register_device (TYPE_1__*) ;
 int rtc_write (int ,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ds1511_rtc_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct rtc_plat_data *pdata;
 int ret = 0;
 struct nvmem_config ds1511_nvmem_cfg = {
  .name = "ds1511_nvram",
  .word_size = 1,
  .stride = 1,
  .size = DS1511_RAM_MAX,
  .reg_read = ds1511_nvram_read,
  .reg_write = ds1511_nvram_write,
  .priv = &pdev->dev,
 };

 pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ds1511_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(ds1511_base))
  return PTR_ERR(ds1511_base);
 pdata->ioaddr = ds1511_base;
 pdata->irq = platform_get_irq(pdev, 0);




 rtc_write(DS1511_BME, RTC_CMD);
 rtc_write(0, RTC_CMD1);



 rtc_write(0, DS1511_WD_MSEC);
 rtc_write(0, DS1511_WD_SEC);



 rtc_enable_update();




 if (rtc_read(RTC_CMD1) & DS1511_BLF1)
  dev_warn(&pdev->dev, "voltage-low detected.\n");

 spin_lock_init(&pdata->lock);
 platform_set_drvdata(pdev, pdata);

 pdata->rtc = devm_rtc_allocate_device(&pdev->dev);
 if (IS_ERR(pdata->rtc))
  return PTR_ERR(pdata->rtc);

 pdata->rtc->ops = &ds1511_rtc_ops;

 pdata->rtc->nvram_old_abi = 1;

 ret = rtc_register_device(pdata->rtc);
 if (ret)
  return ret;

 rtc_nvmem_register(pdata->rtc, &ds1511_nvmem_cfg);





 if (pdata->irq > 0) {
  rtc_read(RTC_CMD1);
  if (devm_request_irq(&pdev->dev, pdata->irq, ds1511_interrupt,
   IRQF_SHARED, pdev->name, pdev) < 0) {

   dev_warn(&pdev->dev, "interrupt not available.\n");
   pdata->irq = 0;
  }
 }

 return 0;
}
