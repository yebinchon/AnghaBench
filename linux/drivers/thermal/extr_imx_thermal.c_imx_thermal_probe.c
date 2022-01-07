
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct TYPE_9__ {int of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct imx_thermal_data {scalar_t__ irq; int temp_max; int temp_critical; int temp_passive; int irq_enabled; struct regmap* thermal_clk; struct regmap* tz; int mode; TYPE_1__* socdata; int temp_grade; struct regmap* tempmon; } ;
struct TYPE_8__ {scalar_t__ version; int low_alarm_mask; int power_down_mask; int measure_temp_mask; int measure_freq_mask; int measure_freq_shift; scalar_t__ sensor_ctrl; scalar_t__ measure_freq_ctrl; scalar_t__ low_alarm_ctrl; } ;


 int BIT (int ) ;
 int DIV_ROUND_UP (int,int) ;
 int ENODEV ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IMX6_MISC0 ;
 int IMX6_MISC0_REFTOP_SELBIASOFF ;
 scalar_t__ IMX6_MISC1 ;
 int IMX6_MISC1_IRQ_TEMPHIGH ;
 int IMX6_MISC1_IRQ_TEMPLOW ;
 int IMX6_MISC1_IRQ_TEMPPANIC ;
 int IMX_PASSIVE_DELAY ;
 int IMX_POLLING_DELAY ;
 int IMX_TRIP_NUM ;
 int IMX_TRIP_PASSIVE ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 scalar_t__ REG_CLR ;
 scalar_t__ REG_SET ;
 scalar_t__ TEMPMON_IMX6SX ;
 scalar_t__ TEMPMON_IMX7D ;
 int THERMAL_DEVICE_ENABLED ;
 int clk_disable_unprepare (struct regmap*) ;
 int clk_prepare_enable (struct regmap*) ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_info (TYPE_2__*,char*,int ,int,int,int) ;
 struct regmap* devm_clk_get (TYPE_2__*,int *) ;
 struct imx_thermal_data* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_2__*,int,int ,int ,int ,char*,struct imx_thermal_data*) ;
 int imx_init_from_nvmem_cells (struct platform_device*) ;
 int imx_init_from_tempmon_data (struct platform_device*) ;
 int imx_set_alarm_temp (struct imx_thermal_data*,int) ;
 int imx_set_panic_temp (struct imx_thermal_data*,int) ;
 int imx_thermal_alarm_irq ;
 int imx_thermal_alarm_irq_thread ;
 int imx_thermal_register_legacy_cooling (struct imx_thermal_data*) ;
 int imx_thermal_unregister_legacy_cooling (struct imx_thermal_data*) ;
 int imx_tz_ops ;
 TYPE_1__* of_device_get_match_data (TYPE_2__*) ;
 scalar_t__ of_find_property (int ,char*,int *) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct imx_thermal_data*) ;
 int regmap_write (struct regmap*,scalar_t__,int) ;
 struct regmap* syscon_regmap_lookup_by_phandle (int ,char*) ;
 struct regmap* thermal_zone_device_register (char*,int ,int ,struct imx_thermal_data*,int *,int *,int ,int ) ;
 int thermal_zone_device_unregister (struct regmap*) ;

__attribute__((used)) static int imx_thermal_probe(struct platform_device *pdev)
{
 struct imx_thermal_data *data;
 struct regmap *map;
 int measure_freq;
 int ret;

 data = devm_kzalloc(&pdev->dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;

 map = syscon_regmap_lookup_by_phandle(pdev->dev.of_node, "fsl,tempmon");
 if (IS_ERR(map)) {
  ret = PTR_ERR(map);
  dev_err(&pdev->dev, "failed to get tempmon regmap: %d\n", ret);
  return ret;
 }
 data->tempmon = map;

 data->socdata = of_device_get_match_data(&pdev->dev);
 if (!data->socdata) {
  dev_err(&pdev->dev, "no device match found\n");
  return -ENODEV;
 }


 if (data->socdata->version == TEMPMON_IMX6SX) {
  regmap_write(map, IMX6_MISC1 + REG_CLR,
   IMX6_MISC1_IRQ_TEMPHIGH | IMX6_MISC1_IRQ_TEMPLOW
   | IMX6_MISC1_IRQ_TEMPPANIC);




  regmap_write(map, data->socdata->low_alarm_ctrl + REG_SET,
        data->socdata->low_alarm_mask);
 }

 data->irq = platform_get_irq(pdev, 0);
 if (data->irq < 0)
  return data->irq;

 platform_set_drvdata(pdev, data);

 if (of_find_property(pdev->dev.of_node, "nvmem-cells", ((void*)0))) {
  ret = imx_init_from_nvmem_cells(pdev);
  if (ret) {
   if (ret == -EPROBE_DEFER)
    return ret;

   dev_err(&pdev->dev, "failed to init from nvmem: %d\n",
    ret);
   return ret;
  }
 } else {
  ret = imx_init_from_tempmon_data(pdev);
  if (ret) {
   dev_err(&pdev->dev, "failed to init from fsl,tempmon-data\n");
   return ret;
  }
 }


 regmap_write(map, data->socdata->sensor_ctrl + REG_CLR,
       data->socdata->power_down_mask);
 regmap_write(map, data->socdata->sensor_ctrl + REG_CLR,
       data->socdata->measure_temp_mask);
 regmap_write(map, data->socdata->measure_freq_ctrl + REG_CLR,
       data->socdata->measure_freq_mask);
 if (data->socdata->version != TEMPMON_IMX7D)
  regmap_write(map, IMX6_MISC0 + REG_SET,
   IMX6_MISC0_REFTOP_SELBIASOFF);
 regmap_write(map, data->socdata->sensor_ctrl + REG_SET,
       data->socdata->power_down_mask);

 ret = imx_thermal_register_legacy_cooling(data);
 if (ret) {
  if (ret == -EPROBE_DEFER)
   return ret;

  dev_err(&pdev->dev,
   "failed to register cpufreq cooling device: %d\n", ret);
  return ret;
 }

 data->thermal_clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(data->thermal_clk)) {
  ret = PTR_ERR(data->thermal_clk);
  if (ret != -EPROBE_DEFER)
   dev_err(&pdev->dev,
    "failed to get thermal clk: %d\n", ret);
  goto legacy_cleanup;
 }
 ret = clk_prepare_enable(data->thermal_clk);
 if (ret) {
  dev_err(&pdev->dev, "failed to enable thermal clk: %d\n", ret);
  goto legacy_cleanup;
 }

 data->tz = thermal_zone_device_register("imx_thermal_zone",
      IMX_TRIP_NUM,
      BIT(IMX_TRIP_PASSIVE), data,
      &imx_tz_ops, ((void*)0),
      IMX_PASSIVE_DELAY,
      IMX_POLLING_DELAY);
 if (IS_ERR(data->tz)) {
  ret = PTR_ERR(data->tz);
  dev_err(&pdev->dev,
   "failed to register thermal zone device %d\n", ret);
  goto clk_disable;
 }

 dev_info(&pdev->dev, "%s CPU temperature grade - max:%dC"
   " critical:%dC passive:%dC\n", data->temp_grade,
   data->temp_max / 1000, data->temp_critical / 1000,
   data->temp_passive / 1000);


 regmap_write(map, data->socdata->measure_freq_ctrl + REG_CLR,
       data->socdata->measure_freq_mask);
 measure_freq = DIV_ROUND_UP(32768, 10);
 regmap_write(map, data->socdata->measure_freq_ctrl + REG_SET,
       measure_freq << data->socdata->measure_freq_shift);
 imx_set_alarm_temp(data, data->temp_passive);

 if (data->socdata->version == TEMPMON_IMX6SX)
  imx_set_panic_temp(data, data->temp_critical);

 regmap_write(map, data->socdata->sensor_ctrl + REG_CLR,
       data->socdata->power_down_mask);
 regmap_write(map, data->socdata->sensor_ctrl + REG_SET,
       data->socdata->measure_temp_mask);

 data->irq_enabled = 1;
 data->mode = THERMAL_DEVICE_ENABLED;

 ret = devm_request_threaded_irq(&pdev->dev, data->irq,
   imx_thermal_alarm_irq, imx_thermal_alarm_irq_thread,
   0, "imx_thermal", data);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to request alarm irq: %d\n", ret);
  goto thermal_zone_unregister;
 }

 return 0;

thermal_zone_unregister:
 thermal_zone_device_unregister(data->tz);
clk_disable:
 clk_disable_unprepare(data->thermal_clk);
legacy_cleanup:
 imx_thermal_unregister_legacy_cooling(data);

 return ret;
}
