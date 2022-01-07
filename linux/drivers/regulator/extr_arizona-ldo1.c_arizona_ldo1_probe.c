
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_desc {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct arizona_ldo1 {int init_data; int regmap; } ;
struct TYPE_3__ {int ldo1; } ;
struct arizona {int type; int external_dcvdd; TYPE_1__ pdata; int regmap; } ;


 int ENOMEM ;
 int GFP_KERNEL ;






 struct regulator_desc arizona_ldo1 ;
 int arizona_ldo1_common_init (struct platform_device*,struct arizona_ldo1*,struct regulator_desc const*,int *,int*) ;
 int arizona_ldo1_default ;
 int arizona_ldo1_dvfs ;
 struct regulator_desc arizona_ldo1_hc ;
 int arizona_ldo1_wm5110 ;
 struct arizona* dev_get_drvdata (int ) ;
 struct arizona_ldo1* devm_kzalloc (TYPE_2__*,int,int ) ;

__attribute__((used)) static int arizona_ldo1_probe(struct platform_device *pdev)
{
 struct arizona *arizona = dev_get_drvdata(pdev->dev.parent);
 struct arizona_ldo1 *ldo1;
 const struct regulator_desc *desc;
 bool external_dcvdd;
 int ret;

 ldo1 = devm_kzalloc(&pdev->dev, sizeof(*ldo1), GFP_KERNEL);
 if (!ldo1)
  return -ENOMEM;

 ldo1->regmap = arizona->regmap;






 switch (arizona->type) {
 case 132:
 case 129:
 case 128:
 case 133:
  desc = &arizona_ldo1_hc;
  ldo1->init_data = arizona_ldo1_dvfs;
  break;
 case 131:
 case 130:
  desc = &arizona_ldo1;
  ldo1->init_data = arizona_ldo1_wm5110;
  break;
 default:
  desc = &arizona_ldo1;
  ldo1->init_data = arizona_ldo1_default;
  break;
 }

 ret = arizona_ldo1_common_init(pdev, ldo1, desc,
           &arizona->pdata.ldo1,
           &external_dcvdd);
 if (ret == 0)
  arizona->external_dcvdd = external_dcvdd;

 return ret;
}
