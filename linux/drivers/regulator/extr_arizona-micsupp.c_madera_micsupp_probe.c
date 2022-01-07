
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_3__ {int micvdd; } ;
struct madera {TYPE_1__ pdata; int dev; int dapm; int regmap; } ;
struct arizona_micsupp {int init_data; int dev; int * dapm; int regmap; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int arizona_micsupp_common_init (struct platform_device*,struct arizona_micsupp*,int *,int *) ;
 int arizona_micsupp_ext_default ;
 struct madera* dev_get_drvdata (int ) ;
 struct arizona_micsupp* devm_kzalloc (TYPE_2__*,int,int ) ;
 int madera_micsupp ;

__attribute__((used)) static int madera_micsupp_probe(struct platform_device *pdev)
{
 struct madera *madera = dev_get_drvdata(pdev->dev.parent);
 struct arizona_micsupp *micsupp;

 micsupp = devm_kzalloc(&pdev->dev, sizeof(*micsupp), GFP_KERNEL);
 if (!micsupp)
  return -ENOMEM;

 micsupp->regmap = madera->regmap;
 micsupp->dapm = &madera->dapm;
 micsupp->dev = madera->dev;
 micsupp->init_data = arizona_micsupp_ext_default;

 return arizona_micsupp_common_init(pdev, micsupp, &madera_micsupp,
        &madera->pdata.micvdd);
}
