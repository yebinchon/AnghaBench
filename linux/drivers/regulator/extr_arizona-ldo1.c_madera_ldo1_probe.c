
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_3__ {int ldo1; } ;
struct madera {int internal_dcvdd; TYPE_1__ pdata; int regmap; } ;
struct arizona_ldo1 {int init_data; int regmap; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int arizona_ldo1_common_init (struct platform_device*,struct arizona_ldo1*,int *,int *,int*) ;
 struct madera* dev_get_drvdata (int ) ;
 struct arizona_ldo1* devm_kzalloc (TYPE_2__*,int,int ) ;
 int madera_ldo1 ;
 int madera_ldo1_default ;

__attribute__((used)) static int madera_ldo1_probe(struct platform_device *pdev)
{
 struct madera *madera = dev_get_drvdata(pdev->dev.parent);
 struct arizona_ldo1 *ldo1;
 bool external_dcvdd;
 int ret;

 ldo1 = devm_kzalloc(&pdev->dev, sizeof(*ldo1), GFP_KERNEL);
 if (!ldo1)
  return -ENOMEM;

 ldo1->regmap = madera->regmap;

 ldo1->init_data = madera_ldo1_default;

 ret = arizona_ldo1_common_init(pdev, ldo1, &madera_ldo1,
           &madera->pdata.ldo1,
           &external_dcvdd);
 if (ret)
  return ret;

 madera->internal_dcvdd = !external_dcvdd;

 return 0;
}
