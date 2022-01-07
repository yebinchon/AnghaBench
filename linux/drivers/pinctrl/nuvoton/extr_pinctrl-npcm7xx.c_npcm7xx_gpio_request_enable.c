
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int gc; } ;
struct pinctrl_dev {int dummy; } ;
struct npcm7xx_pinctrl {int gcr_regmap; int dev; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;
 int fn_gpio ;
 int npcm7xx_setfunc (int ,unsigned int*,int,int ) ;
 struct npcm7xx_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int npcm7xx_gpio_request_enable(struct pinctrl_dev *pctldev,
           struct pinctrl_gpio_range *range,
           unsigned int offset)
{
 struct npcm7xx_pinctrl *npcm = pinctrl_dev_get_drvdata(pctldev);

 if (!range) {
  dev_err(npcm->dev, "invalid range\n");
  return -EINVAL;
 }
 if (!range->gc) {
  dev_err(npcm->dev, "invalid gpiochip\n");
  return -EINVAL;
 }

 npcm7xx_setfunc(npcm->gcr_regmap, &offset, 1, fn_gpio);

 return 0;
}
