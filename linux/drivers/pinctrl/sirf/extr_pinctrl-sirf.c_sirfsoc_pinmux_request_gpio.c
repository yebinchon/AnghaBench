
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sirfsoc_pmx {scalar_t__ gpio_virtbase; } ;
struct pinctrl_gpio_range {int id; unsigned int pin_base; } ;
struct pinctrl_dev {int dummy; } ;


 scalar_t__ SIRFSOC_GPIO_PAD_EN (int) ;
 struct sirfsoc_pmx* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int sirfsoc_pinmux_request_gpio(struct pinctrl_dev *pmxdev,
 struct pinctrl_gpio_range *range, unsigned offset)
{
 struct sirfsoc_pmx *spmx;

 int group = range->id;

 u32 muxval;

 spmx = pinctrl_dev_get_drvdata(pmxdev);

 muxval = readl(spmx->gpio_virtbase +
  SIRFSOC_GPIO_PAD_EN(group));
 muxval = muxval | (1 << (offset - range->pin_base));
 writel(muxval, spmx->gpio_virtbase +
  SIRFSOC_GPIO_PAD_EN(group));

 return 0;
}
