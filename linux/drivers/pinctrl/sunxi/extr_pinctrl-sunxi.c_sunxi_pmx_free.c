
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_pinctrl_regulator {int * regulator; int refcount; } ;
struct sunxi_pinctrl {struct sunxi_pinctrl_regulator* regulators; TYPE_1__* desc; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {unsigned int pin_base; } ;


 unsigned int PINS_PER_BANK ;
 struct sunxi_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int refcount_dec_and_test (int *) ;
 int regulator_disable (int *) ;
 int regulator_put (int *) ;

__attribute__((used)) static int sunxi_pmx_free(struct pinctrl_dev *pctldev, unsigned offset)
{
 struct sunxi_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 unsigned short bank = offset / PINS_PER_BANK;
 unsigned short bank_offset = bank - pctl->desc->pin_base /
         PINS_PER_BANK;
 struct sunxi_pinctrl_regulator *s_reg = &pctl->regulators[bank_offset];

 if (!refcount_dec_and_test(&s_reg->refcount))
  return 0;

 regulator_disable(s_reg->regulator);
 regulator_put(s_reg->regulator);
 s_reg->regulator = ((void*)0);

 return 0;
}
