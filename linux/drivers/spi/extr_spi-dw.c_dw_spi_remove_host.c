
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dw_spi {int master; int irq; TYPE_1__* dma_ops; } ;
struct TYPE_2__ {int (* dma_exit ) (struct dw_spi*) ;} ;


 int dw_spi_debugfs_remove (struct dw_spi*) ;
 int free_irq (int ,int ) ;
 int spi_shutdown_chip (struct dw_spi*) ;
 int stub1 (struct dw_spi*) ;

void dw_spi_remove_host(struct dw_spi *dws)
{
 dw_spi_debugfs_remove(dws);

 if (dws->dma_ops && dws->dma_ops->dma_exit)
  dws->dma_ops->dma_exit(dws);

 spi_shutdown_chip(dws);

 free_irq(dws->irq, dws->master);
}
