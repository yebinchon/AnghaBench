
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_hsdma_chan {int * rx_ring; int * tx_ring; int desc_addr; } ;
struct TYPE_2__ {int dev; } ;
struct mtk_hsdam_engine {TYPE_1__ ddev; } ;


 int HSDMA_DESCS_NUM ;
 int dma_free_coherent (int ,int,int *,int ) ;

__attribute__((used)) static void mtk_hsdam_free_desc(struct mtk_hsdam_engine *hsdma,
    struct mtk_hsdma_chan *chan)
{
 if (chan->tx_ring) {
  dma_free_coherent(hsdma->ddev.dev,
    2 * HSDMA_DESCS_NUM * sizeof(*chan->tx_ring),
    chan->tx_ring, chan->desc_addr);
  chan->tx_ring = ((void*)0);
  chan->rx_ring = ((void*)0);
 }
}
