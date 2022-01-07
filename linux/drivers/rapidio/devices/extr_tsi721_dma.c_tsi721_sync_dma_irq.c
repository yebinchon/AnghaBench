
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tsi721_device {int flags; TYPE_1__* pdev; TYPE_3__* msix; } ;
struct TYPE_5__ {int device; } ;
struct tsi721_bdma_chan {size_t id; TYPE_2__ dchan; } ;
struct TYPE_6__ {int vector; } ;
struct TYPE_4__ {int irq; } ;


 int TSI721_USING_MSIX ;
 size_t TSI721_VECT_DMA0_DONE ;
 size_t TSI721_VECT_DMA0_INT ;
 int synchronize_irq (int ) ;
 struct tsi721_device* to_tsi721 (int ) ;

__attribute__((used)) static void tsi721_sync_dma_irq(struct tsi721_bdma_chan *bdma_chan)
{
 struct tsi721_device *priv = to_tsi721(bdma_chan->dchan.device);
 synchronize_irq(priv->pdev->irq);
}
