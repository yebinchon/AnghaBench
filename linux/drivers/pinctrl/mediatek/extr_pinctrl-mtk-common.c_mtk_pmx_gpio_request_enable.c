
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct mtk_pinctrl {int dev; } ;


 int EINVAL ;
 int PIN_CONFIG_INPUT_ENABLE ;
 int dev_err (int ,char*,unsigned int) ;
 int mtk_pconf_set_ies_smt (struct mtk_pinctrl*,unsigned int,int,int ) ;
 int mtk_pmx_find_gpio_mode (struct mtk_pinctrl*,unsigned int) ;
 int mtk_pmx_set_mode (struct pinctrl_dev*,unsigned int,int) ;
 struct mtk_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int mtk_pmx_gpio_request_enable(struct pinctrl_dev *pctldev,
        struct pinctrl_gpio_range *range,
        unsigned offset)
{
 int muxval;
 struct mtk_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);

 muxval = mtk_pmx_find_gpio_mode(pctl, offset);

 if (muxval < 0) {
  dev_err(pctl->dev, "invalid gpio pin %d.\n", offset);
  return -EINVAL;
 }

 mtk_pmx_set_mode(pctldev, offset, muxval);
 mtk_pconf_set_ies_smt(pctl, offset, 1, PIN_CONFIG_INPUT_ENABLE);

 return 0;
}
