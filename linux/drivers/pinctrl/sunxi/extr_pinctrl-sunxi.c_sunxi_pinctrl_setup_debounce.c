
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sunxi_pinctrl {TYPE_1__* desc; scalar_t__ membase; int dev; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int irq_banks; } ;


 unsigned long DIV_ROUND_CLOSEST (int ,int ) ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int USEC_PER_SEC ;
 struct clk* devm_clk_get (int ,char*) ;
 int of_clk_get_parent_count (struct device_node*) ;
 int of_find_property (struct device_node*,char*,int *) ;
 int of_property_read_u32_index (struct device_node*,char*,int,int *) ;
 scalar_t__ sunxi_irq_debounce_reg_from_bank (TYPE_1__*,int) ;
 unsigned int sunxi_pinctrl_get_debounce_div (struct clk*,unsigned long,unsigned int*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int sunxi_pinctrl_setup_debounce(struct sunxi_pinctrl *pctl,
     struct device_node *node)
{
 unsigned int hosc_diff, losc_diff;
 unsigned int hosc_div, losc_div;
 struct clk *hosc, *losc;
 u8 div, src;
 int i, ret;


 if (of_clk_get_parent_count(node) != 3)
  return 0;


 if (!of_find_property(node, "input-debounce", ((void*)0)))
  return 0;

 losc = devm_clk_get(pctl->dev, "losc");
 if (IS_ERR(losc))
  return PTR_ERR(losc);

 hosc = devm_clk_get(pctl->dev, "hosc");
 if (IS_ERR(hosc))
  return PTR_ERR(hosc);

 for (i = 0; i < pctl->desc->irq_banks; i++) {
  unsigned long debounce_freq;
  u32 debounce;

  ret = of_property_read_u32_index(node, "input-debounce",
       i, &debounce);
  if (ret)
   return ret;

  if (!debounce)
   continue;

  debounce_freq = DIV_ROUND_CLOSEST(USEC_PER_SEC, debounce);
  losc_div = sunxi_pinctrl_get_debounce_div(losc,
         debounce_freq,
         &losc_diff);

  hosc_div = sunxi_pinctrl_get_debounce_div(hosc,
         debounce_freq,
         &hosc_diff);

  if (hosc_diff < losc_diff) {
   div = hosc_div;
   src = 1;
  } else {
   div = losc_div;
   src = 0;
  }

  writel(src | div << 4,
         pctl->membase +
         sunxi_irq_debounce_reg_from_bank(pctl->desc, i));
 }

 return 0;
}
