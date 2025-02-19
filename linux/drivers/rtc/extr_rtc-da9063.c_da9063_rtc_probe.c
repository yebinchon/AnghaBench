
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_11__ {int parent; int of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_device_id {struct da9063_compatible_rtc_regmap* data; } ;
struct da9063_compatible_rtc_regmap {size_t rtc_data_start; int rtc_alarm_len; int rtc_alarm_secs_reg; int rtc_tick_on_mask; int rtc_alarm_year_reg; int rtc_alarm_status_mask; int rtc_crystal_mask; int rtc_enable_32k_crystal_reg; int rtc_enable_mask; int rtc_enable_reg; } ;
struct da9063_compatible_rtc {int rtc_sync; TYPE_1__* rtc_dev; int alarm_time; int regmap; struct da9063_compatible_rtc_regmap* config; } ;
struct da9063 {scalar_t__ variant_code; } ;
struct TYPE_10__ {int uie_unsupported; int range_max; int range_min; int * ops; } ;


 int DA9063_ALARM_STATUS_ALARM ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 scalar_t__ PMIC_DA9063_AD ;
 int PTR_ERR (TYPE_1__*) ;
 int RTC_DATA_LEN ;
 size_t RTC_SEC ;
 int RTC_TIMESTAMP_BEGIN_2000 ;
 int RTC_TIMESTAMP_END_2063 ;
 struct da9063_compatible_rtc_regmap da9063_ad_regs ;
 int da9063_alarm_event ;
 int da9063_compatible_reg_id_table ;
 int da9063_data_to_tm (int *,int *,struct da9063_compatible_rtc*) ;
 int da9063_rtc_ops ;
 int dev_err (TYPE_3__*,char*,...) ;
 struct da9063* dev_get_drvdata (int ) ;
 int dev_get_regmap (int ,int *) ;
 int dev_warn (TYPE_3__*,char*) ;
 struct da9063_compatible_rtc* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_3__*,int,int *,int ,int,char*,struct da9063_compatible_rtc*) ;
 TYPE_1__* devm_rtc_allocate_device (TYPE_3__*) ;
 scalar_t__ of_device_is_compatible (int ,char*) ;
 struct of_device_id* of_match_node (int ,int ) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct da9063_compatible_rtc*) ;
 int regmap_bulk_read (int ,int ,int *,int ) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int rtc_register_device (TYPE_1__*) ;

__attribute__((used)) static int da9063_rtc_probe(struct platform_device *pdev)
{
 struct da9063_compatible_rtc *rtc;
 const struct da9063_compatible_rtc_regmap *config;
 const struct of_device_id *match;
 int irq_alarm;
 u8 data[RTC_DATA_LEN];
 int ret;

 if (!pdev->dev.of_node)
  return -ENXIO;

 match = of_match_node(da9063_compatible_reg_id_table,
         pdev->dev.of_node);

 rtc = devm_kzalloc(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
 if (!rtc)
  return -ENOMEM;

 rtc->config = match->data;
 if (of_device_is_compatible(pdev->dev.of_node, "dlg,da9063-rtc")) {
  struct da9063 *chip = dev_get_drvdata(pdev->dev.parent);

  if (chip->variant_code == PMIC_DA9063_AD)
   rtc->config = &da9063_ad_regs;
 }

 rtc->regmap = dev_get_regmap(pdev->dev.parent, ((void*)0));
 if (!rtc->regmap) {
  dev_warn(&pdev->dev, "Parent regmap unavailable.\n");
  return -ENXIO;
 }

 config = rtc->config;
 ret = regmap_update_bits(rtc->regmap,
     config->rtc_enable_reg,
     config->rtc_enable_mask,
     config->rtc_enable_mask);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to enable RTC\n");
  return ret;
 }

 ret = regmap_update_bits(rtc->regmap,
     config->rtc_enable_32k_crystal_reg,
     config->rtc_crystal_mask,
     config->rtc_crystal_mask);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to run 32kHz oscillator\n");
  return ret;
 }

 ret = regmap_update_bits(rtc->regmap,
     config->rtc_alarm_secs_reg,
     config->rtc_alarm_status_mask,
     0);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to access RTC alarm register\n");
  return ret;
 }

 ret = regmap_update_bits(rtc->regmap,
     config->rtc_alarm_secs_reg,
     DA9063_ALARM_STATUS_ALARM,
     DA9063_ALARM_STATUS_ALARM);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to access RTC alarm register\n");
  return ret;
 }

 ret = regmap_update_bits(rtc->regmap,
     config->rtc_alarm_year_reg,
     config->rtc_tick_on_mask,
     0);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to disable TICKs\n");
  return ret;
 }

 data[RTC_SEC] = 0;
 ret = regmap_bulk_read(rtc->regmap,
          config->rtc_alarm_secs_reg,
          &data[config->rtc_data_start],
          config->rtc_alarm_len);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to read initial alarm data: %d\n",
   ret);
  return ret;
 }

 platform_set_drvdata(pdev, rtc);

 rtc->rtc_dev = devm_rtc_allocate_device(&pdev->dev);
 if (IS_ERR(rtc->rtc_dev))
  return PTR_ERR(rtc->rtc_dev);

 rtc->rtc_dev->ops = &da9063_rtc_ops;
 rtc->rtc_dev->range_min = RTC_TIMESTAMP_BEGIN_2000;
 rtc->rtc_dev->range_max = RTC_TIMESTAMP_END_2063;

 da9063_data_to_tm(data, &rtc->alarm_time, rtc);
 rtc->rtc_sync = 0;





 if (config->rtc_data_start != RTC_SEC)
  rtc->rtc_dev->uie_unsupported = 1;

 irq_alarm = platform_get_irq_byname(pdev, "ALARM");
 ret = devm_request_threaded_irq(&pdev->dev, irq_alarm, ((void*)0),
     da9063_alarm_event,
     IRQF_TRIGGER_LOW | IRQF_ONESHOT,
     "ALARM", rtc);
 if (ret)
  dev_err(&pdev->dev, "Failed to request ALARM IRQ %d: %d\n",
   irq_alarm, ret);

 return rtc_register_device(rtc->rtc_dev);
}
