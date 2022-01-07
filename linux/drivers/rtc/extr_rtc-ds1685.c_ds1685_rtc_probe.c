
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct rtc_device {int uie_unsupported; int nvram_old_abi; int max_user_freq; int range_max; int range_min; int * ops; } ;
struct resource {int start; } ;
struct TYPE_7__ {scalar_t__ platform_data; } ;
struct platform_device {TYPE_1__ dev; int name; } ;
struct nvmem_config {char* name; struct ds1685_priv* priv; int reg_write; int reg_read; int size; } ;
struct ds1685_rtc_platform_data {scalar_t__ regstep; int (* plat_read ) (struct ds1685_priv*,int ) ;scalar_t__ no_irq; scalar_t__ uie_unsupported; scalar_t__ bcd_mode; scalar_t__ plat_post_ram_clear; scalar_t__ plat_wake_alarm; scalar_t__ plat_prepare_poweroff; scalar_t__ alloc_io_resources; int (* plat_write ) (struct ds1685_priv*,int ,int) ;} ;
struct ds1685_priv {int regstep; int (* read ) (struct ds1685_priv*,int ) ;int irq_num; scalar_t__ no_irq; struct rtc_device* dev; scalar_t__ uie_unsupported; int (* write ) (struct ds1685_priv*,int ,int) ;scalar_t__ bcd_mode; scalar_t__ post_ram_clear; scalar_t__ wake_alarm; scalar_t__ prepare_poweroff; scalar_t__ alloc_io_resources; int regs; int size; int baseaddr; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (struct rtc_device*) ;
 int NVRAM_TOTAL_SZ ;
 int PTR_ERR (struct rtc_device*) ;
 int RTC_CTRL_4A_INCR ;
 int RTC_CTRL_4A_RWK_MASK ;
 int RTC_CTRL_4A_VRT2 ;
 int RTC_CTRL_4B_E32K ;
 int RTC_CTRL_4B_KSE ;
 int RTC_CTRL_4B_RWK_MASK ;
 int RTC_CTRL_A ;
 int RTC_CTRL_A_DV0 ;
 int RTC_CTRL_A_DV1 ;
 int RTC_CTRL_A_DV2 ;
 int RTC_CTRL_A_RS_MASK ;
 int RTC_CTRL_B ;
 int RTC_CTRL_B_2412 ;
 int RTC_CTRL_B_DM ;
 int RTC_CTRL_B_DSE ;
 int RTC_CTRL_B_PAU_MASK ;
 int RTC_CTRL_B_SET ;
 int RTC_CTRL_C ;
 int RTC_CTRL_D ;
 int RTC_CTRL_D_VRT ;
 int RTC_EXT_CTRL_4A ;
 int RTC_EXT_CTRL_4B ;
 int RTC_HRS ;
 int RTC_HRS_12_BCD_MASK ;
 int RTC_HRS_12_BIN_MASK ;
 int RTC_HRS_24_BCD_MASK ;
 int RTC_HRS_24_BIN_MASK ;
 int RTC_HRS_ALARM ;
 int RTC_HRS_AMPM_MASK ;
 int RTC_MAX_USER_FREQ ;
 int RTC_TIMESTAMP_BEGIN_2000 ;
 int RTC_TIMESTAMP_END_2099 ;
 int cpu_relax () ;
 int dev_warn (TYPE_1__*,char*) ;
 int devm_ioremap (TYPE_1__*,int ,int ) ;
 struct ds1685_priv* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_mem_region (TYPE_1__*,int ,int ,int ) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int ,int,int ,struct platform_device*) ;
 struct rtc_device* devm_rtc_allocate_device (TYPE_1__*) ;
 int ds1685_nvram_read ;
 int ds1685_nvram_write ;
 int ds1685_read (struct ds1685_priv*,int ) ;
 int ds1685_rtc_bcd2bin (struct ds1685_priv*,int,int ,int ) ;
 int ds1685_rtc_bin2bcd (struct ds1685_priv*,int,int ,int ) ;
 int ds1685_rtc_irq_handler ;
 int ds1685_rtc_ops ;
 int ds1685_rtc_switch_to_bank0 (struct ds1685_priv*) ;
 int ds1685_rtc_sysfs_misc_grp ;
 int ds1685_write (struct ds1685_priv*,int ,int) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ds1685_priv*) ;
 int resource_size (struct resource*) ;
 int rtc_add_group (struct rtc_device*,int *) ;
 int rtc_nvmem_register (struct rtc_device*,struct nvmem_config*) ;
 int rtc_register_device (struct rtc_device*) ;
 int stub1 (struct ds1685_priv*,int ) ;
 int stub10 (struct ds1685_priv*,int ,int) ;
 int stub11 (struct ds1685_priv*,int ,int) ;
 int stub12 (struct ds1685_priv*,int ) ;
 int stub13 (struct ds1685_priv*,int ,int) ;
 int stub14 (struct ds1685_priv*,int ,int) ;
 int stub15 (struct ds1685_priv*,int ,int) ;
 int stub16 (struct ds1685_priv*,int ) ;
 int stub17 (struct ds1685_priv*,int ) ;
 int stub18 (struct ds1685_priv*,int ) ;
 int stub19 (struct ds1685_priv*,int ,int) ;
 int stub2 (struct ds1685_priv*,int ,int) ;
 int stub20 (struct ds1685_priv*,int ) ;
 int stub21 (struct ds1685_priv*,int ) ;
 int stub22 (struct ds1685_priv*,int ,int) ;
 int stub23 (struct ds1685_priv*,int ) ;
 int stub24 (struct ds1685_priv*,int ,int) ;
 int stub25 (struct ds1685_priv*,int ) ;
 int stub26 (struct ds1685_priv*,int ,int) ;
 int stub27 (struct ds1685_priv*,int ) ;
 int stub3 (struct ds1685_priv*,int ,int) ;
 int stub4 (struct ds1685_priv*,int ) ;
 int stub5 (struct ds1685_priv*,int ,int) ;
 int stub6 (struct ds1685_priv*,int ) ;
 int stub7 (struct ds1685_priv*,int ) ;
 int stub8 (struct ds1685_priv*,int ) ;
 int stub9 (struct ds1685_priv*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
ds1685_rtc_probe(struct platform_device *pdev)
{
 struct rtc_device *rtc_dev;
 struct resource *res;
 struct ds1685_priv *rtc;
 struct ds1685_rtc_platform_data *pdata;
 u8 ctrla, ctrlb, hours;
 unsigned char am_pm;
 int ret = 0;
 struct nvmem_config nvmem_cfg = {
  .name = "ds1685_nvram",
  .size = NVRAM_TOTAL_SZ,
  .reg_read = ds1685_nvram_read,
  .reg_write = ds1685_nvram_write,
 };


 pdata = (struct ds1685_rtc_platform_data *) pdev->dev.platform_data;
 if (!pdata)
  return -ENODEV;


 rtc = devm_kzalloc(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
 if (!rtc)
  return -ENOMEM;







 if (pdata->alloc_io_resources) {

  res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
  if (!res)
   return -ENXIO;
  rtc->size = resource_size(res);



  if (!devm_request_mem_region(&pdev->dev, res->start, rtc->size,
          pdev->name))
   return -EBUSY;





  rtc->baseaddr = res->start;
  rtc->regs = devm_ioremap(&pdev->dev, res->start, rtc->size);
  if (!rtc->regs)
   return -ENOMEM;
 }
 rtc->alloc_io_resources = pdata->alloc_io_resources;


 if (pdata->regstep > 0)
  rtc->regstep = pdata->regstep;
 else
  rtc->regstep = 1;


 if (pdata->plat_read)
  rtc->read = pdata->plat_read;
 else
  if (pdata->alloc_io_resources)
   rtc->read = ds1685_read;
  else
   return -ENXIO;


 if (pdata->plat_write)
  rtc->write = pdata->plat_write;
 else
  if (pdata->alloc_io_resources)
   rtc->write = ds1685_write;
  else
   return -ENXIO;


 if (pdata->plat_prepare_poweroff)
  rtc->prepare_poweroff = pdata->plat_prepare_poweroff;


 if (pdata->plat_wake_alarm)
  rtc->wake_alarm = pdata->plat_wake_alarm;


 if (pdata->plat_post_ram_clear)
  rtc->post_ram_clear = pdata->plat_post_ram_clear;


 platform_set_drvdata(pdev, rtc);


 ctrla = rtc->read(rtc, RTC_CTRL_A);
 if (!(ctrla & RTC_CTRL_A_DV1))
  ctrla |= RTC_CTRL_A_DV1;


 ctrla &= ~(RTC_CTRL_A_DV2);


 ctrla &= ~(RTC_CTRL_A_RS_MASK);





 ctrla |= RTC_CTRL_A_DV0;
 rtc->write(rtc, RTC_CTRL_A, ctrla);


 rtc->write(rtc, RTC_EXT_CTRL_4B,
     (rtc->read(rtc, RTC_EXT_CTRL_4B) | RTC_CTRL_4B_E32K));


 rtc->write(rtc, RTC_CTRL_B,
     (rtc->read(rtc, RTC_CTRL_B) | RTC_CTRL_B_SET));


 while (rtc->read(rtc, RTC_EXT_CTRL_4A) & RTC_CTRL_4A_INCR)
  cpu_relax();





 ctrlb = rtc->read(rtc, RTC_CTRL_B);
 if (pdata->bcd_mode)
  ctrlb &= ~(RTC_CTRL_B_DM);
 else
  ctrlb |= RTC_CTRL_B_DM;
 rtc->bcd_mode = pdata->bcd_mode;






 if (ctrlb & RTC_CTRL_B_DSE)
  ctrlb &= ~(RTC_CTRL_B_DSE);


 if (!(ctrlb & RTC_CTRL_B_2412)) {

  hours = rtc->read(rtc, RTC_HRS);
  am_pm = hours & RTC_HRS_AMPM_MASK;
  hours = ds1685_rtc_bcd2bin(rtc, hours, RTC_HRS_12_BCD_MASK,
        RTC_HRS_12_BIN_MASK);
  hours = ((hours == 12) ? 0 : ((am_pm) ? hours + 12 : hours));


  ctrlb |= RTC_CTRL_B_2412;


  rtc->write(rtc, RTC_CTRL_B, ctrlb);


  rtc->write(rtc, RTC_HRS,
      ds1685_rtc_bin2bcd(rtc, hours,
           RTC_HRS_24_BIN_MASK,
           RTC_HRS_24_BCD_MASK));


  hours = rtc->read(rtc, RTC_HRS_ALARM);
  am_pm = hours & RTC_HRS_AMPM_MASK;
  hours = ds1685_rtc_bcd2bin(rtc, hours, RTC_HRS_12_BCD_MASK,
        RTC_HRS_12_BIN_MASK);
  hours = ((hours == 12) ? 0 : ((am_pm) ? hours + 12 : hours));


  rtc->write(rtc, RTC_HRS_ALARM,
      ds1685_rtc_bin2bcd(rtc, hours,
           RTC_HRS_24_BIN_MASK,
           RTC_HRS_24_BCD_MASK));
 } else {

  rtc->write(rtc, RTC_CTRL_B, ctrlb);
 }


 rtc->write(rtc, RTC_CTRL_B,
     (rtc->read(rtc, RTC_CTRL_B) & ~(RTC_CTRL_B_SET)));


 if (!(rtc->read(rtc, RTC_CTRL_D) & RTC_CTRL_D_VRT))
  dev_warn(&pdev->dev,
    "Main battery is exhausted! RTC may be invalid!\n");


 if (!(rtc->read(rtc, RTC_EXT_CTRL_4A) & RTC_CTRL_4A_VRT2))
  dev_warn(&pdev->dev,
    "Aux battery is exhausted or not available.\n");


 rtc->write(rtc, RTC_CTRL_B,
     (rtc->read(rtc, RTC_CTRL_B) & ~(RTC_CTRL_B_PAU_MASK)));


 rtc->read(rtc, RTC_CTRL_C);


 rtc->write(rtc, RTC_EXT_CTRL_4B,
     (rtc->read(rtc, RTC_EXT_CTRL_4B) & ~(RTC_CTRL_4B_RWK_MASK)));


 rtc->write(rtc, RTC_EXT_CTRL_4A,
     (rtc->read(rtc, RTC_EXT_CTRL_4A) & ~(RTC_CTRL_4A_RWK_MASK)));





 rtc->write(rtc, RTC_EXT_CTRL_4B,
     (rtc->read(rtc, RTC_EXT_CTRL_4B) | RTC_CTRL_4B_KSE));

 rtc_dev = devm_rtc_allocate_device(&pdev->dev);
 if (IS_ERR(rtc_dev))
  return PTR_ERR(rtc_dev);

 rtc_dev->ops = &ds1685_rtc_ops;


 rtc_dev->range_min = RTC_TIMESTAMP_BEGIN_2000;
 rtc_dev->range_max = RTC_TIMESTAMP_END_2099;


 rtc_dev->max_user_freq = RTC_MAX_USER_FREQ;


 if (pdata->uie_unsupported)
  rtc_dev->uie_unsupported = 1;
 rtc->uie_unsupported = pdata->uie_unsupported;

 rtc->dev = rtc_dev;
 if (!pdata->no_irq) {
  ret = platform_get_irq(pdev, 0);
  if (ret <= 0)
   return ret;

  rtc->irq_num = ret;


  ret = devm_request_threaded_irq(&pdev->dev, rtc->irq_num,
           ((void*)0), ds1685_rtc_irq_handler,
           IRQF_SHARED | IRQF_ONESHOT,
           pdev->name, pdev);


  if (unlikely(ret)) {
   dev_warn(&pdev->dev,
     "RTC interrupt not available\n");
   rtc->irq_num = 0;
  }
 }
 rtc->no_irq = pdata->no_irq;


 ds1685_rtc_switch_to_bank0(rtc);

 ret = rtc_add_group(rtc_dev, &ds1685_rtc_sysfs_misc_grp);
 if (ret)
  return ret;

 rtc_dev->nvram_old_abi = 1;
 nvmem_cfg.priv = rtc;
 ret = rtc_nvmem_register(rtc_dev, &nvmem_cfg);
 if (ret)
  return ret;

 return rtc_register_device(rtc_dev);
}
