
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pch_spi_dma_ctrl {void* rx_buf_virt; int rx_buf_dma; void* tx_buf_virt; int tx_buf_dma; } ;
struct pch_spi_data {struct pch_spi_dma_ctrl dma; } ;
struct pch_spi_board_data {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PCH_BUF_SIZE ;
 void* dma_alloc_coherent (int *,int ,int *,int ) ;

__attribute__((used)) static int pch_alloc_dma_buf(struct pch_spi_board_data *board_dat,
         struct pch_spi_data *data)
{
 struct pch_spi_dma_ctrl *dma;
 int ret;

 dma = &data->dma;
 ret = 0;

 dma->tx_buf_virt = dma_alloc_coherent(&board_dat->pdev->dev,
    PCH_BUF_SIZE, &dma->tx_buf_dma, GFP_KERNEL);
 if (!dma->tx_buf_virt)
  ret = -ENOMEM;


 dma->rx_buf_virt = dma_alloc_coherent(&board_dat->pdev->dev,
    PCH_BUF_SIZE, &dma->rx_buf_dma, GFP_KERNEL);
 if (!dma->rx_buf_virt)
  ret = -ENOMEM;

 return ret;
}
