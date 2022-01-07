
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pinctrl_gpio_range {int gc; } ;
struct pinctrl_dev {int dummy; } ;
struct oxnas_pinctrl {int regmap; int dev; } ;
struct TYPE_2__ {scalar_t__ base; } ;
struct oxnas_gpio_bank {scalar_t__ id; TYPE_1__ gpio_chip; } ;


 int BIT (scalar_t__) ;
 int PINMUX_810_PRIMARY_SEL0 ;
 int PINMUX_810_PRIMARY_SEL1 ;
 int PINMUX_810_SECONDARY_SEL0 ;
 int PINMUX_810_SECONDARY_SEL1 ;
 int PINMUX_810_TERTIARY_SEL0 ;
 int PINMUX_810_TERTIARY_SEL1 ;
 int dev_dbg (int ,char*,unsigned int,scalar_t__,scalar_t__,int ) ;
 struct oxnas_gpio_bank* gpiochip_get_data (int ) ;
 struct oxnas_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int regmap_write_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int oxnas_ox810se_gpio_request_enable(struct pinctrl_dev *pctldev,
          struct pinctrl_gpio_range *range,
          unsigned int offset)
{
 struct oxnas_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 struct oxnas_gpio_bank *bank = gpiochip_get_data(range->gc);
 u32 mask = BIT(offset - bank->gpio_chip.base);

 dev_dbg(pctl->dev, "requesting gpio %d in bank %d (id %d) with mask 0x%x\n",
  offset, bank->gpio_chip.base, bank->id, mask);

 regmap_write_bits(pctl->regmap,
     (bank->id ?
    PINMUX_810_PRIMARY_SEL1 :
    PINMUX_810_PRIMARY_SEL0),
     mask, 0);
 regmap_write_bits(pctl->regmap,
     (bank->id ?
    PINMUX_810_SECONDARY_SEL1 :
    PINMUX_810_SECONDARY_SEL0),
     mask, 0);
 regmap_write_bits(pctl->regmap,
     (bank->id ?
    PINMUX_810_TERTIARY_SEL1 :
    PINMUX_810_TERTIARY_SEL0),
     mask, 0);

 return 0;
}
