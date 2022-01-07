
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_msi {int dummy; } ;
struct msi_controller {int dummy; } ;
struct irq_data {int hwirq; } ;


 struct irq_data* irq_get_irq_data (unsigned int) ;
 int rcar_msi_free (struct rcar_msi*,int ) ;
 struct rcar_msi* to_rcar_msi (struct msi_controller*) ;

__attribute__((used)) static void rcar_msi_teardown_irq(struct msi_controller *chip, unsigned int irq)
{
 struct rcar_msi *msi = to_rcar_msi(chip);
 struct irq_data *d = irq_get_irq_data(irq);

 rcar_msi_free(msi, d->hwirq);
}
