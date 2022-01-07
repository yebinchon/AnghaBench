
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_pingroup {int in_bit; int intr_polarity_bit; } ;
struct msm_pinctrl {int dev; } ;
struct irq_data {int dummy; } ;


 unsigned int BIT (int ) ;
 int dev_err (int ,char*,unsigned int,unsigned int) ;
 unsigned int msm_readl_intr_cfg (struct msm_pinctrl*,struct msm_pingroup const*) ;
 unsigned int msm_readl_intr_status (struct msm_pinctrl*,struct msm_pingroup const*) ;
 unsigned int msm_readl_io (struct msm_pinctrl*,struct msm_pingroup const*) ;
 int msm_writel_intr_cfg (unsigned int,struct msm_pinctrl*,struct msm_pingroup const*) ;

__attribute__((used)) static void msm_gpio_update_dual_edge_pos(struct msm_pinctrl *pctrl,
       const struct msm_pingroup *g,
       struct irq_data *d)
{
 int loop_limit = 100;
 unsigned val, val2, intstat;
 unsigned pol;

 do {
  val = msm_readl_io(pctrl, g) & BIT(g->in_bit);

  pol = msm_readl_intr_cfg(pctrl, g);
  pol ^= BIT(g->intr_polarity_bit);
  msm_writel_intr_cfg(val, pctrl, g);

  val2 = msm_readl_io(pctrl, g) & BIT(g->in_bit);
  intstat = msm_readl_intr_status(pctrl, g);
  if (intstat || (val == val2))
   return;
 } while (loop_limit-- > 0);
 dev_err(pctrl->dev, "dual-edge irq failed to stabilize, %#08x != %#08x\n",
  val, val2);
}
