
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_dma {int virt; scalar_t__ chan; } ;
struct msm_port {int uart; struct msm_dma rx_dma; struct msm_dma tx_dma; } ;


 int dma_release_channel (scalar_t__) ;
 int kfree (int ) ;
 int memset (struct msm_dma*,int ,int) ;
 int msm_stop_dma (int *,struct msm_dma*) ;

__attribute__((used)) static void msm_release_dma(struct msm_port *msm_port)
{
 struct msm_dma *dma;

 dma = &msm_port->tx_dma;
 if (dma->chan) {
  msm_stop_dma(&msm_port->uart, dma);
  dma_release_channel(dma->chan);
 }

 memset(dma, 0, sizeof(*dma));

 dma = &msm_port->rx_dma;
 if (dma->chan) {
  msm_stop_dma(&msm_port->uart, dma);
  dma_release_channel(dma->chan);
  kfree(dma->virt);
 }

 memset(dma, 0, sizeof(*dma));
}
