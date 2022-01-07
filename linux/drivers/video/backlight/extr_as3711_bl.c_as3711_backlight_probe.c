
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct as3711_bl_data {int type; } ;
struct as3711_bl_supply {struct as3711_bl_data su2; struct as3711_bl_data su1; struct as3711_bl_pdata* pdata; struct as3711* as3711; } ;
struct as3711_bl_pdata {int su2_fbprot; int su2_feedback; int su1_max_uA; int su2_max_uA; scalar_t__ su2_fb; scalar_t__ su1_fb; } ;
struct as3711 {int dummy; } ;
struct TYPE_8__ {scalar_t__ of_node; } ;


 int AS3711_BL_SU1 ;
 int AS3711_BL_SU2 ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int as3711_backlight_parse_dt (TYPE_1__*) ;
 int as3711_bl_init_su2 (struct as3711_bl_supply*) ;
 int as3711_bl_register (struct platform_device*,unsigned int,struct as3711_bl_data*) ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct as3711* dev_get_drvdata (TYPE_4__*) ;
 struct as3711_bl_pdata* dev_get_platdata (TYPE_1__*) ;
 int dev_warn (TYPE_1__*,char*) ;
 struct as3711_bl_supply* devm_kzalloc (TYPE_1__*,int,int ) ;
 unsigned int min (int,int) ;
 int platform_set_drvdata (struct platform_device*,struct as3711_bl_supply*) ;

__attribute__((used)) static int as3711_backlight_probe(struct platform_device *pdev)
{
 struct as3711_bl_pdata *pdata = dev_get_platdata(&pdev->dev);
 struct as3711 *as3711 = dev_get_drvdata(pdev->dev.parent);
 struct as3711_bl_supply *supply;
 struct as3711_bl_data *su;
 unsigned int max_brightness;
 int ret;

 if (!pdata) {
  dev_err(&pdev->dev, "No platform data, exiting...\n");
  return -ENODEV;
 }

 if (pdev->dev.parent->of_node) {
  ret = as3711_backlight_parse_dt(&pdev->dev);
  if (ret < 0) {
   dev_err(&pdev->dev, "DT parsing failed: %d\n", ret);
   return ret;
  }
 }

 if (!pdata->su1_fb && !pdata->su2_fb) {
  dev_err(&pdev->dev, "No framebuffer specified\n");
  return -EINVAL;
 }






 if (pdata->su1_fb ||
     pdata->su2_fbprot != 130 ||
     pdata->su2_feedback != 133) {
  dev_warn(&pdev->dev,
    "Attention! An untested mode has been chosen!\n"
    "Please, review the code, enable, test, and report success:-)\n");
  return -EINVAL;
 }

 supply = devm_kzalloc(&pdev->dev, sizeof(*supply), GFP_KERNEL);
 if (!supply)
  return -ENOMEM;

 supply->as3711 = as3711;
 supply->pdata = pdata;

 if (pdata->su1_fb) {
  su = &supply->su1;
  su->type = AS3711_BL_SU1;

  max_brightness = min(pdata->su1_max_uA, 31);
  ret = as3711_bl_register(pdev, max_brightness, su);
  if (ret < 0)
   return ret;
 }

 if (pdata->su2_fb) {
  su = &supply->su2;
  su->type = AS3711_BL_SU2;

  switch (pdata->su2_fbprot) {
  case 132:
  case 131:
  case 130:
  case 129:
   break;
  default:
   return -EINVAL;
  }

  switch (pdata->su2_feedback) {
  case 128:
   max_brightness = min(pdata->su2_max_uA, 31);
   break;
  case 136:
  case 135:
  case 134:
  case 133:
   max_brightness = min(pdata->su2_max_uA / 150, 255);
   break;
  default:
   return -EINVAL;
  }

  ret = as3711_bl_init_su2(supply);
  if (ret < 0)
   return ret;

  ret = as3711_bl_register(pdev, max_brightness, su);
  if (ret < 0)
   return ret;
 }

 platform_set_drvdata(pdev, supply);

 return 0;
}
