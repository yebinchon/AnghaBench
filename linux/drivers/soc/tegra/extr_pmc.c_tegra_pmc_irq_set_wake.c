
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pmc {scalar_t__ wake; } ;
struct irq_data {int hwirq; } ;


 int ULONG_MAX ;
 scalar_t__ WAKE_AOWAKE_MASK_W (int) ;
 scalar_t__ WAKE_AOWAKE_STATUS_W (int) ;
 scalar_t__ WAKE_AOWAKE_TIER2_ROUTING (unsigned int) ;
 scalar_t__ WARN_ON (int) ;
 struct tegra_pmc* irq_data_get_irq_chip_data (struct irq_data*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int tegra_pmc_irq_set_wake(struct irq_data *data, unsigned int on)
{
 struct tegra_pmc *pmc = irq_data_get_irq_chip_data(data);
 unsigned int offset, bit;
 u32 value;


 if (WARN_ON(data->hwirq == ULONG_MAX))
  return 0;

 offset = data->hwirq / 32;
 bit = data->hwirq % 32;


 writel(0x1, pmc->wake + WAKE_AOWAKE_STATUS_W(data->hwirq));


 value = readl(pmc->wake + WAKE_AOWAKE_TIER2_ROUTING(offset));

 if (!on)
  value &= ~(1 << bit);
 else
  value |= 1 << bit;

 writel(value, pmc->wake + WAKE_AOWAKE_TIER2_ROUTING(offset));


 writel(!!on, pmc->wake + WAKE_AOWAKE_MASK_W(data->hwirq));

 return 0;
}
