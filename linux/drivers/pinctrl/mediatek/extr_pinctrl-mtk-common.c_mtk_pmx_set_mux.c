
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct mtk_pinctrl_group {int pin; } ;
struct mtk_pinctrl {int dev; struct mtk_pinctrl_group* groups; } ;
struct mtk_desc_function {int muxval; } ;


 int EINVAL ;
 int dev_err (int ,char*,unsigned int,unsigned int) ;
 struct mtk_desc_function* mtk_pctrl_find_function_by_pin (struct mtk_pinctrl*,int ,unsigned int) ;
 int mtk_pctrl_is_function_valid (struct mtk_pinctrl*,int ,unsigned int) ;
 int mtk_pmx_set_mode (struct pinctrl_dev*,int ,int ) ;
 struct mtk_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int mtk_pmx_set_mux(struct pinctrl_dev *pctldev,
       unsigned function,
       unsigned group)
{
 bool ret;
 const struct mtk_desc_function *desc;
 struct mtk_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 struct mtk_pinctrl_group *g = pctl->groups + group;

 ret = mtk_pctrl_is_function_valid(pctl, g->pin, function);
 if (!ret) {
  dev_err(pctl->dev, "invalid function %d on group %d .\n",
    function, group);
  return -EINVAL;
 }

 desc = mtk_pctrl_find_function_by_pin(pctl, g->pin, function);
 if (!desc)
  return -EINVAL;
 mtk_pmx_set_mode(pctldev, g->pin, desc->muxval);
 return 0;
}
