
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_message {int dummy; } ;
struct spi_controller {int dummy; } ;
struct dw_spi {TYPE_1__* dma_ops; scalar_t__ dma_mapped; } ;
struct TYPE_2__ {int (* dma_stop ) (struct dw_spi*) ;} ;


 struct dw_spi* spi_controller_get_devdata (struct spi_controller*) ;
 int spi_reset_chip (struct dw_spi*) ;
 int stub1 (struct dw_spi*) ;

__attribute__((used)) static void dw_spi_handle_err(struct spi_controller *master,
  struct spi_message *msg)
{
 struct dw_spi *dws = spi_controller_get_devdata(master);

 if (dws->dma_mapped)
  dws->dma_ops->dma_stop(dws);

 spi_reset_chip(dws);
}
