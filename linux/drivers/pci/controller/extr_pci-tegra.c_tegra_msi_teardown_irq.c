
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_msi {int dummy; } ;
struct msi_controller {int dummy; } ;
struct irq_data {int dummy; } ;
typedef int irq_hw_number_t ;


 int irq_dispose_mapping (unsigned int) ;
 struct irq_data* irq_get_irq_data (unsigned int) ;
 int irqd_to_hwirq (struct irq_data*) ;
 int tegra_msi_free (struct tegra_msi*,int ) ;
 struct tegra_msi* to_tegra_msi (struct msi_controller*) ;

__attribute__((used)) static void tegra_msi_teardown_irq(struct msi_controller *chip,
       unsigned int irq)
{
 struct tegra_msi *msi = to_tegra_msi(chip);
 struct irq_data *d = irq_get_irq_data(irq);
 irq_hw_number_t hwirq = irqd_to_hwirq(d);

 irq_dispose_mapping(irq);
 tegra_msi_free(msi, hwirq);
}
