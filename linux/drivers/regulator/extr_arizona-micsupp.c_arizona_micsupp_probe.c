
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct regulator_desc {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct arizona_micsupp {int init_data; int dev; int * dapm; int regmap; } ;
struct TYPE_3__ {int micvdd; } ;
struct arizona {int type; TYPE_1__ pdata; int dev; int dapm; int regmap; } ;


 int ENOMEM ;
 int GFP_KERNEL ;


 struct regulator_desc arizona_micsupp ;
 int arizona_micsupp_common_init (struct platform_device*,struct arizona_micsupp*,struct regulator_desc const*,int *) ;
 int arizona_micsupp_default ;
 struct regulator_desc arizona_micsupp_ext ;
 int arizona_micsupp_ext_default ;
 struct arizona* dev_get_drvdata (int ) ;
 struct arizona_micsupp* devm_kzalloc (TYPE_2__*,int,int ) ;

__attribute__((used)) static int arizona_micsupp_probe(struct platform_device *pdev)
{
 struct arizona *arizona = dev_get_drvdata(pdev->dev.parent);
 const struct regulator_desc *desc;
 struct arizona_micsupp *micsupp;

 micsupp = devm_kzalloc(&pdev->dev, sizeof(*micsupp), GFP_KERNEL);
 if (!micsupp)
  return -ENOMEM;

 micsupp->regmap = arizona->regmap;
 micsupp->dapm = &arizona->dapm;
 micsupp->dev = arizona->dev;






 switch (arizona->type) {
 case 129:
 case 128:
  desc = &arizona_micsupp_ext;
  micsupp->init_data = arizona_micsupp_ext_default;
  break;
 default:
  desc = &arizona_micsupp;
  micsupp->init_data = arizona_micsupp_default;
  break;
 }

 return arizona_micsupp_common_init(pdev, micsupp, desc,
        &arizona->pdata.micvdd);
}
