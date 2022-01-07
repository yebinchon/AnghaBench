
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct tsi721_imsg_desc {int dummy; } ;
struct tsi721_device {int flags; TYPE_3__* imsg_ring; TYPE_2__* pdev; TYPE_1__* msix; scalar_t__* imsg_init; } ;
struct rio_mport {struct tsi721_device* priv; } ;
struct TYPE_6__ {size_t size; int * imd_base; int imd_phys; int * imfq_base; int imfq_phys; int * buf_base; int buf_phys; int ** imq_base; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int vector; } ;


 int TSI721_MSG_BUFFER_SIZE ;
 int TSI721_OBDMAC_INT_MASK ;
 int TSI721_USING_MSIX ;
 int TSI721_VECT_IMB0_INT ;
 int TSI721_VECT_IMB0_RCV ;
 int dma_free_coherent (int *,int,int *,int ) ;
 int free_irq (int ,void*) ;
 int tsi721_imsg_interrupt_disable (struct tsi721_device*,int,int ) ;

__attribute__((used)) static void tsi721_close_inb_mbox(struct rio_mport *mport, int mbox)
{
 struct tsi721_device *priv = mport->priv;
 u32 rx_slot;
 int ch = mbox + 4;

 if (!priv->imsg_init[mbox])
  return;
 priv->imsg_init[mbox] = 0;




 tsi721_imsg_interrupt_disable(priv, ch, TSI721_OBDMAC_INT_MASK);
 for (rx_slot = 0; rx_slot < priv->imsg_ring[mbox].size; rx_slot++)
  priv->imsg_ring[mbox].imq_base[rx_slot] = ((void*)0);


 dma_free_coherent(&priv->pdev->dev,
  priv->imsg_ring[mbox].size * TSI721_MSG_BUFFER_SIZE,
  priv->imsg_ring[mbox].buf_base,
  priv->imsg_ring[mbox].buf_phys);

 priv->imsg_ring[mbox].buf_base = ((void*)0);


 dma_free_coherent(&priv->pdev->dev,
  priv->imsg_ring[mbox].size * 8,
  priv->imsg_ring[mbox].imfq_base,
  priv->imsg_ring[mbox].imfq_phys);

 priv->imsg_ring[mbox].imfq_base = ((void*)0);


 dma_free_coherent(&priv->pdev->dev,
  priv->imsg_ring[mbox].size * sizeof(struct tsi721_imsg_desc),
  priv->imsg_ring[mbox].imd_base,
  priv->imsg_ring[mbox].imd_phys);

 priv->imsg_ring[mbox].imd_base = ((void*)0);
}
