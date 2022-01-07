
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_4__ {int npwm; int * ops; TYPE_2__* dev; } ;
struct lp3943_pwm {TYPE_1__ chip; struct lp3943* lp3943; int pdata; } ;
struct lp3943 {int pdata; } ;


 int CONFIG_OF ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ENABLED (int ) ;
 int LP3943_NUM_PWMS ;
 struct lp3943* dev_get_drvdata (int ) ;
 struct lp3943_pwm* devm_kzalloc (TYPE_2__*,int,int ) ;
 int lp3943_pwm_ops ;
 int lp3943_pwm_parse_dt (TYPE_2__*,struct lp3943_pwm*) ;
 int platform_set_drvdata (struct platform_device*,struct lp3943_pwm*) ;
 int pwmchip_add (TYPE_1__*) ;

__attribute__((used)) static int lp3943_pwm_probe(struct platform_device *pdev)
{
 struct lp3943 *lp3943 = dev_get_drvdata(pdev->dev.parent);
 struct lp3943_pwm *lp3943_pwm;
 int ret;

 lp3943_pwm = devm_kzalloc(&pdev->dev, sizeof(*lp3943_pwm), GFP_KERNEL);
 if (!lp3943_pwm)
  return -ENOMEM;

 lp3943_pwm->pdata = lp3943->pdata;
 if (!lp3943_pwm->pdata) {
  if (IS_ENABLED(CONFIG_OF))
   ret = lp3943_pwm_parse_dt(&pdev->dev, lp3943_pwm);
  else
   ret = -ENODEV;

  if (ret)
   return ret;
 }

 lp3943_pwm->lp3943 = lp3943;
 lp3943_pwm->chip.dev = &pdev->dev;
 lp3943_pwm->chip.ops = &lp3943_pwm_ops;
 lp3943_pwm->chip.npwm = LP3943_NUM_PWMS;

 platform_set_drvdata(pdev, lp3943_pwm);

 return pwmchip_add(&lp3943_pwm->chip);
}
