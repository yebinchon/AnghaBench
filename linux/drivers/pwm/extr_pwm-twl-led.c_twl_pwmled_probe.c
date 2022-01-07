
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int npwm; int base; int * dev; int * ops; } ;
struct twl_pwmled_chip {TYPE_1__ chip; int mutex; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct twl_pwmled_chip* devm_kzalloc (int *,int,int ) ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct twl_pwmled_chip*) ;
 int pwmchip_add (TYPE_1__*) ;
 int twl4030_pwmled_ops ;
 int twl6030_pwmled_ops ;
 scalar_t__ twl_class_is_4030 () ;

__attribute__((used)) static int twl_pwmled_probe(struct platform_device *pdev)
{
 struct twl_pwmled_chip *twl;
 int ret;

 twl = devm_kzalloc(&pdev->dev, sizeof(*twl), GFP_KERNEL);
 if (!twl)
  return -ENOMEM;

 if (twl_class_is_4030()) {
  twl->chip.ops = &twl4030_pwmled_ops;
  twl->chip.npwm = 2;
 } else {
  twl->chip.ops = &twl6030_pwmled_ops;
  twl->chip.npwm = 1;
 }

 twl->chip.dev = &pdev->dev;
 twl->chip.base = -1;

 mutex_init(&twl->mutex);

 ret = pwmchip_add(&twl->chip);
 if (ret < 0)
  return ret;

 platform_set_drvdata(pdev, twl);

 return 0;
}
