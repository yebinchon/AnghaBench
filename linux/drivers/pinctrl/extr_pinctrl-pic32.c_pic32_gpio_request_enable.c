
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pinctrl_gpio_range {int gc; } ;
struct pinctrl_dev {int dummy; } ;
struct pic32_pinctrl {int dev; } ;
struct TYPE_2__ {unsigned int base; } ;
struct pic32_gpio_bank {scalar_t__ reg_base; TYPE_1__ gpio_chip; } ;


 int ANSEL_REG ;
 int BIT (unsigned int) ;
 scalar_t__ PIC32_CLR (int ) ;
 int dev_dbg (int ,char*,unsigned int,unsigned int,int ) ;
 struct pic32_gpio_bank* gpiochip_get_data (int ) ;
 struct pic32_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int pic32_gpio_request_enable(struct pinctrl_dev *pctldev,
         struct pinctrl_gpio_range *range,
         unsigned offset)
{
 struct pic32_pinctrl *pctl = pinctrl_dev_get_drvdata(pctldev);
 struct pic32_gpio_bank *bank = gpiochip_get_data(range->gc);
 u32 mask = BIT(offset - bank->gpio_chip.base);

 dev_dbg(pctl->dev, "requesting gpio %d in bank %d with mask 0x%x\n",
  offset, bank->gpio_chip.base, mask);

 writel(mask, bank->reg_base + PIC32_CLR(ANSEL_REG));

 return 0;
}
