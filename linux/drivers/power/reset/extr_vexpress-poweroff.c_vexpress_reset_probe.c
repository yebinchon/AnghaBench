
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct platform_device {int dev; } ;
struct of_device_id {int data; } ;
typedef enum vexpress_reset_func { ____Placeholder_vexpress_reset_func } vexpress_reset_func ;


 int EINVAL ;



 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int _vexpress_register_restart_handler (int *) ;
 int dev_set_drvdata (int *,struct regmap*) ;
 struct regmap* devm_regmap_init_vexpress_config (int *) ;
 struct of_device_id* of_match_device (int ,int *) ;
 int pm_power_off ;
 int vexpress_power_off ;
 int * vexpress_power_off_device ;
 int vexpress_reset_of_match ;
 int vexpress_restart_device ;

__attribute__((used)) static int vexpress_reset_probe(struct platform_device *pdev)
{
 const struct of_device_id *match =
   of_match_device(vexpress_reset_of_match, &pdev->dev);
 struct regmap *regmap;
 int ret = 0;

 if (!match)
  return -EINVAL;

 regmap = devm_regmap_init_vexpress_config(&pdev->dev);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);
 dev_set_drvdata(&pdev->dev, regmap);

 switch ((enum vexpress_reset_func)match->data) {
 case 128:
  vexpress_power_off_device = &pdev->dev;
  pm_power_off = vexpress_power_off;
  break;
 case 129:
  if (!vexpress_restart_device)
   ret = _vexpress_register_restart_handler(&pdev->dev);
  break;
 case 130:
  ret = _vexpress_register_restart_handler(&pdev->dev);
  break;
 };

 return ret;
}
