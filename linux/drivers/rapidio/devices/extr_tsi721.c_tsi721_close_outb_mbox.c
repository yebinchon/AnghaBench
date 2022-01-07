
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct tsi721_omsg_desc {int dummy; } ;
struct tsi721_dma_sts {int dummy; } ;
struct tsi721_device {int flags; TYPE_3__* omsg_ring; TYPE_2__* pdev; TYPE_1__* msix; scalar_t__* omsg_init; } ;
struct rio_mport {struct tsi721_device* priv; } ;
struct TYPE_6__ {int sts_size; int size; int ** omq_base; int * omq_phys; int * omd_base; int omd_phys; int * sts_base; int sts_phys; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int vector; } ;


 int TSI721_MSG_BUFFER_SIZE ;
 int TSI721_OBDMAC_INT_ALL ;
 int TSI721_USING_MSIX ;
 int TSI721_VECT_OMB0_DONE ;
 int TSI721_VECT_OMB0_INT ;
 int dma_free_coherent (int *,int,int *,int ) ;
 int free_irq (int ,void*) ;
 int tsi721_omsg_interrupt_disable (struct tsi721_device*,int,int ) ;

__attribute__((used)) static void tsi721_close_outb_mbox(struct rio_mport *mport, int mbox)
{
 struct tsi721_device *priv = mport->priv;
 u32 i;

 if (!priv->omsg_init[mbox])
  return;
 priv->omsg_init[mbox] = 0;



 tsi721_omsg_interrupt_disable(priv, mbox, TSI721_OBDMAC_INT_ALL);
 dma_free_coherent(&priv->pdev->dev,
  priv->omsg_ring[mbox].sts_size * sizeof(struct tsi721_dma_sts),
  priv->omsg_ring[mbox].sts_base,
  priv->omsg_ring[mbox].sts_phys);

 priv->omsg_ring[mbox].sts_base = ((void*)0);


 dma_free_coherent(&priv->pdev->dev,
  (priv->omsg_ring[mbox].size + 1) *
   sizeof(struct tsi721_omsg_desc),
  priv->omsg_ring[mbox].omd_base,
  priv->omsg_ring[mbox].omd_phys);

 priv->omsg_ring[mbox].omd_base = ((void*)0);


 for (i = 0; i < priv->omsg_ring[mbox].size; i++) {
  if (priv->omsg_ring[mbox].omq_base[i]) {
   dma_free_coherent(&priv->pdev->dev,
    TSI721_MSG_BUFFER_SIZE,
    priv->omsg_ring[mbox].omq_base[i],
    priv->omsg_ring[mbox].omq_phys[i]);

   priv->omsg_ring[mbox].omq_base[i] = ((void*)0);
  }
 }
}
