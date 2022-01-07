
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct byt_gpio {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int byt_gpio_clear_triggering (struct byt_gpio*,unsigned int) ;
 struct byt_gpio* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int pm_runtime_put (int *) ;

__attribute__((used)) static void byt_gpio_disable_free(struct pinctrl_dev *pctl_dev,
      struct pinctrl_gpio_range *range,
      unsigned int offset)
{
 struct byt_gpio *vg = pinctrl_dev_get_drvdata(pctl_dev);

 byt_gpio_clear_triggering(vg, offset);
 pm_runtime_put(&vg->pdev->dev);
}
