
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct exynos_tmu_data {int cal_type; scalar_t__ base; } ;


 unsigned int EXYNOS5433_TRIMINFO_CALIB_SEL_MASK ;
 unsigned int EXYNOS5433_TRIMINFO_CALIB_SEL_SHIFT ;

 unsigned int EXYNOS5433_TRIMINFO_SENSOR_ID_MASK ;
 unsigned int EXYNOS5433_TRIMINFO_SENSOR_ID_SHIFT ;

 scalar_t__ EXYNOS_TMU_REG_TRIMINFO ;
 int TYPE_ONE_POINT_TRIMMING ;
 int TYPE_TWO_POINT_TRIMMING ;
 int dev_info (int *,char*,int) ;
 struct exynos_tmu_data* platform_get_drvdata (struct platform_device*) ;
 unsigned int readl (scalar_t__) ;
 int sanitize_temp_error (struct exynos_tmu_data*,unsigned int) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void exynos5433_tmu_initialize(struct platform_device *pdev)
{
 struct exynos_tmu_data *data = platform_get_drvdata(pdev);
 unsigned int trim_info;
 int sensor_id, cal_type;

 trim_info = readl(data->base + EXYNOS_TMU_REG_TRIMINFO);
 sanitize_temp_error(data, trim_info);


 sensor_id = (trim_info & EXYNOS5433_TRIMINFO_SENSOR_ID_MASK)
    >> EXYNOS5433_TRIMINFO_SENSOR_ID_SHIFT;
 dev_info(&pdev->dev, "Temperature sensor ID: 0x%x\n", sensor_id);


 writel(trim_info, data->base + EXYNOS_TMU_REG_TRIMINFO);
 cal_type = (trim_info & EXYNOS5433_TRIMINFO_CALIB_SEL_MASK)
    >> EXYNOS5433_TRIMINFO_CALIB_SEL_SHIFT;

 switch (cal_type) {
 case 128:
  data->cal_type = TYPE_TWO_POINT_TRIMMING;
  break;
 case 129:
 default:
  data->cal_type = TYPE_ONE_POINT_TRIMMING;
  break;
 }

 dev_info(&pdev->dev, "Calibration type is %d-point calibration\n",
   cal_type ? 2 : 1);
}
