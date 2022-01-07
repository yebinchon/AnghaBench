
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_slink_data {int is_curr_dma_xfer; } ;
typedef int irqreturn_t ;


 int handle_cpu_based_xfer (struct tegra_slink_data*) ;
 int handle_dma_based_xfer (struct tegra_slink_data*) ;

__attribute__((used)) static irqreturn_t tegra_slink_isr_thread(int irq, void *context_data)
{
 struct tegra_slink_data *tspi = context_data;

 if (!tspi->is_curr_dma_xfer)
  return handle_cpu_based_xfer(tspi);
 return handle_dma_based_xfer(tspi);
}
