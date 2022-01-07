
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_pmx {TYPE_1__* soc; } ;
struct tegra_pingroup {scalar_t__ mux_reg; unsigned int* funcs; int mux_bit; int mux_bank; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {struct tegra_pingroup* groups; } ;


 int ARRAY_SIZE (unsigned int*) ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 struct tegra_pmx* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int pmx_readl (struct tegra_pmx*,int ,scalar_t__) ;
 int pmx_writel (struct tegra_pmx*,int,int ,scalar_t__) ;

__attribute__((used)) static int tegra_pinctrl_set_mux(struct pinctrl_dev *pctldev,
     unsigned function,
     unsigned group)
{
 struct tegra_pmx *pmx = pinctrl_dev_get_drvdata(pctldev);
 const struct tegra_pingroup *g;
 int i;
 u32 val;

 g = &pmx->soc->groups[group];

 if (WARN_ON(g->mux_reg < 0))
  return -EINVAL;

 for (i = 0; i < ARRAY_SIZE(g->funcs); i++) {
  if (g->funcs[i] == function)
   break;
 }
 if (WARN_ON(i == ARRAY_SIZE(g->funcs)))
  return -EINVAL;

 val = pmx_readl(pmx, g->mux_bank, g->mux_reg);
 val &= ~(0x3 << g->mux_bit);
 val |= i << g->mux_bit;
 pmx_writel(pmx, val, g->mux_bank, g->mux_reg);

 return 0;
}
