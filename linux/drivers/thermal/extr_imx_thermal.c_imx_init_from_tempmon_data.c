
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct regmap {int dummy; } ;
struct TYPE_2__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int OCOTP_ANA1 ;
 int OCOTP_MEM0 ;
 int PTR_ERR (struct regmap*) ;
 int dev_err (TYPE_1__*,char*,int) ;
 int imx_init_calib (struct platform_device*,int ) ;
 int imx_init_temp_grade (struct platform_device*,int ) ;
 int regmap_read (struct regmap*,int ,int *) ;
 struct regmap* syscon_regmap_lookup_by_phandle (int ,char*) ;

__attribute__((used)) static int imx_init_from_tempmon_data(struct platform_device *pdev)
{
 struct regmap *map;
 int ret;
 u32 val;

 map = syscon_regmap_lookup_by_phandle(pdev->dev.of_node,
           "fsl,tempmon-data");
 if (IS_ERR(map)) {
  ret = PTR_ERR(map);
  dev_err(&pdev->dev, "failed to get sensor regmap: %d\n", ret);
  return ret;
 }

 ret = regmap_read(map, OCOTP_ANA1, &val);
 if (ret) {
  dev_err(&pdev->dev, "failed to read sensor data: %d\n", ret);
  return ret;
 }
 ret = imx_init_calib(pdev, val);
 if (ret)
  return ret;

 ret = regmap_read(map, OCOTP_MEM0, &val);
 if (ret) {
  dev_err(&pdev->dev, "failed to read sensor data: %d\n", ret);
  return ret;
 }
 imx_init_temp_grade(pdev, val);

 return 0;
}
