
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct gemini_pmx {scalar_t__ is_3516; scalar_t__ is_3512; } ;


 int ARRAY_SIZE (int ) ;
 int gemini_3512_pin_groups ;
 int gemini_3516_pin_groups ;
 struct gemini_pmx* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int gemini_get_groups_count(struct pinctrl_dev *pctldev)
{
 struct gemini_pmx *pmx = pinctrl_dev_get_drvdata(pctldev);

 if (pmx->is_3512)
  return ARRAY_SIZE(gemini_3512_pin_groups);
 if (pmx->is_3516)
  return ARRAY_SIZE(gemini_3516_pin_groups);
 return 0;
}
