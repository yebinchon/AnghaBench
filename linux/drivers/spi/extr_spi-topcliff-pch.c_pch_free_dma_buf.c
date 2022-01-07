
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pch_spi_dma_ctrl {scalar_t__ rx_buf_dma; int rx_buf_virt; scalar_t__ tx_buf_dma; int tx_buf_virt; } ;
struct pch_spi_data {struct pch_spi_dma_ctrl dma; } ;
struct pch_spi_board_data {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int PCH_BUF_SIZE ;
 int dma_free_coherent (int *,int ,int ,scalar_t__) ;

__attribute__((used)) static void pch_free_dma_buf(struct pch_spi_board_data *board_dat,
        struct pch_spi_data *data)
{
 struct pch_spi_dma_ctrl *dma;

 dma = &data->dma;
 if (dma->tx_buf_dma)
  dma_free_coherent(&board_dat->pdev->dev, PCH_BUF_SIZE,
      dma->tx_buf_virt, dma->tx_buf_dma);
 if (dma->rx_buf_dma)
  dma_free_coherent(&board_dat->pdev->dev, PCH_BUF_SIZE,
      dma->rx_buf_virt, dma->rx_buf_dma);
}
