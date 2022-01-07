
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_4__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct exynos_tmu_data {scalar_t__ id; scalar_t__ irq; int soc; int ntrip; int gain; int reference_voltage; int efuse_value; int min_efuse_value; int max_efuse_value; void* base_second; int cal_type; void* tmu_clear_irqs; void* tmu_set_emulation; void* tmu_read; void* tmu_control; int tmu_initialize; int tmu_set_trip_hyst; int tmu_set_trip_temp; void* base; } ;
typedef enum soc_type { ____Placeholder_soc_type } soc_type ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int EXYNOS5433_G3D_BASE ;
 int TYPE_ONE_POINT_TRIMMING ;
 int dev_err (TYPE_1__*,char*) ;
 void* devm_ioremap (TYPE_1__*,int ,int ) ;
 void* exynos4210_tmu_clear_irqs ;
 void* exynos4210_tmu_control ;
 int exynos4210_tmu_initialize ;
 void* exynos4210_tmu_read ;
 int exynos4210_tmu_set_trip_hyst ;
 int exynos4210_tmu_set_trip_temp ;
 int exynos4412_tmu_initialize ;
 void* exynos4412_tmu_read ;
 void* exynos4412_tmu_set_emulation ;
 int exynos4412_tmu_set_trip_hyst ;
 int exynos4412_tmu_set_trip_temp ;
 void* exynos5433_tmu_control ;
 int exynos5433_tmu_initialize ;
 int exynos5433_tmu_set_trip_hyst ;
 int exynos5433_tmu_set_trip_temp ;
 void* exynos7_tmu_control ;
 int exynos7_tmu_initialize ;
 void* exynos7_tmu_read ;
 int exynos7_tmu_set_trip_hyst ;
 int exynos7_tmu_set_trip_temp ;
 scalar_t__ irq_of_parse_and_map (int ,int ) ;
 scalar_t__ of_address_to_resource (int ,int,struct resource*) ;
 scalar_t__ of_alias_get_id (int ,char*) ;
 scalar_t__ of_device_get_match_data (TYPE_1__*) ;
 struct exynos_tmu_data* platform_get_drvdata (struct platform_device*) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int exynos_map_dt_data(struct platform_device *pdev)
{
 struct exynos_tmu_data *data = platform_get_drvdata(pdev);
 struct resource res;

 if (!data || !pdev->dev.of_node)
  return -ENODEV;

 data->id = of_alias_get_id(pdev->dev.of_node, "tmuctrl");
 if (data->id < 0)
  data->id = 0;

 data->irq = irq_of_parse_and_map(pdev->dev.of_node, 0);
 if (data->irq <= 0) {
  dev_err(&pdev->dev, "failed to get IRQ\n");
  return -ENODEV;
 }

 if (of_address_to_resource(pdev->dev.of_node, 0, &res)) {
  dev_err(&pdev->dev, "failed to get Resource 0\n");
  return -ENODEV;
 }

 data->base = devm_ioremap(&pdev->dev, res.start, resource_size(&res));
 if (!data->base) {
  dev_err(&pdev->dev, "Failed to ioremap memory\n");
  return -EADDRNOTAVAIL;
 }

 data->soc = (enum soc_type)of_device_get_match_data(&pdev->dev);

 switch (data->soc) {
 case 135:
  data->tmu_set_trip_temp = exynos4210_tmu_set_trip_temp;
  data->tmu_set_trip_hyst = exynos4210_tmu_set_trip_hyst;
  data->tmu_initialize = exynos4210_tmu_initialize;
  data->tmu_control = exynos4210_tmu_control;
  data->tmu_read = exynos4210_tmu_read;
  data->tmu_clear_irqs = exynos4210_tmu_clear_irqs;
  data->ntrip = 4;
  data->gain = 15;
  data->reference_voltage = 7;
  data->efuse_value = 55;
  data->min_efuse_value = 40;
  data->max_efuse_value = 100;
  break;
 case 136:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
  data->tmu_set_trip_temp = exynos4412_tmu_set_trip_temp;
  data->tmu_set_trip_hyst = exynos4412_tmu_set_trip_hyst;
  data->tmu_initialize = exynos4412_tmu_initialize;
  data->tmu_control = exynos4210_tmu_control;
  data->tmu_read = exynos4412_tmu_read;
  data->tmu_set_emulation = exynos4412_tmu_set_emulation;
  data->tmu_clear_irqs = exynos4210_tmu_clear_irqs;
  data->ntrip = 4;
  data->gain = 8;
  data->reference_voltage = 16;
  data->efuse_value = 55;
  if (data->soc != 131 &&
      data->soc != 130)
   data->min_efuse_value = 40;
  else
   data->min_efuse_value = 0;
  data->max_efuse_value = 100;
  break;
 case 129:
  data->tmu_set_trip_temp = exynos5433_tmu_set_trip_temp;
  data->tmu_set_trip_hyst = exynos5433_tmu_set_trip_hyst;
  data->tmu_initialize = exynos5433_tmu_initialize;
  data->tmu_control = exynos5433_tmu_control;
  data->tmu_read = exynos4412_tmu_read;
  data->tmu_set_emulation = exynos4412_tmu_set_emulation;
  data->tmu_clear_irqs = exynos4210_tmu_clear_irqs;
  data->ntrip = 8;
  data->gain = 8;
  if (res.start == EXYNOS5433_G3D_BASE)
   data->reference_voltage = 23;
  else
   data->reference_voltage = 16;
  data->efuse_value = 75;
  data->min_efuse_value = 40;
  data->max_efuse_value = 150;
  break;
 case 128:
  data->tmu_set_trip_temp = exynos7_tmu_set_trip_temp;
  data->tmu_set_trip_hyst = exynos7_tmu_set_trip_hyst;
  data->tmu_initialize = exynos7_tmu_initialize;
  data->tmu_control = exynos7_tmu_control;
  data->tmu_read = exynos7_tmu_read;
  data->tmu_set_emulation = exynos4412_tmu_set_emulation;
  data->tmu_clear_irqs = exynos4210_tmu_clear_irqs;
  data->ntrip = 8;
  data->gain = 9;
  data->reference_voltage = 17;
  data->efuse_value = 75;
  data->min_efuse_value = 15;
  data->max_efuse_value = 100;
  break;
 default:
  dev_err(&pdev->dev, "Platform not supported\n");
  return -EINVAL;
 }

 data->cal_type = TYPE_ONE_POINT_TRIMMING;





 if (data->soc != 130)
  return 0;

 if (of_address_to_resource(pdev->dev.of_node, 1, &res)) {
  dev_err(&pdev->dev, "failed to get Resource 1\n");
  return -ENODEV;
 }

 data->base_second = devm_ioremap(&pdev->dev, res.start,
     resource_size(&res));
 if (!data->base_second) {
  dev_err(&pdev->dev, "Failed to ioremap memory\n");
  return -ENOMEM;
 }

 return 0;
}
