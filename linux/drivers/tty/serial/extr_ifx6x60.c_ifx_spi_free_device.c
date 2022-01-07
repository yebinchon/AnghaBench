
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifx_spi_device {int rx_bus; int rx_buffer; TYPE_1__* spi_dev; int tx_bus; int tx_buffer; } ;
struct TYPE_2__ {int dev; } ;


 int IFX_SPI_TRANSFER_SIZE ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int ifx_spi_free_port (struct ifx_spi_device*) ;

__attribute__((used)) static void ifx_spi_free_device(struct ifx_spi_device *ifx_dev)
{
 ifx_spi_free_port(ifx_dev);
 dma_free_coherent(&ifx_dev->spi_dev->dev,
    IFX_SPI_TRANSFER_SIZE,
    ifx_dev->tx_buffer,
    ifx_dev->tx_bus);
 dma_free_coherent(&ifx_dev->spi_dev->dev,
    IFX_SPI_TRANSFER_SIZE,
    ifx_dev->rx_buffer,
    ifx_dev->rx_bus);
}
