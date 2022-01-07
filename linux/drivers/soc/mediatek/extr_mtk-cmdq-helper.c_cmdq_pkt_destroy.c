
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmdq_pkt {struct cmdq_pkt* va_base; int buf_size; int pa_base; scalar_t__ cl; } ;
struct cmdq_client {TYPE_2__* chan; } ;
struct TYPE_4__ {TYPE_1__* mbox; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int kfree (struct cmdq_pkt*) ;

void cmdq_pkt_destroy(struct cmdq_pkt *pkt)
{
 struct cmdq_client *client = (struct cmdq_client *)pkt->cl;

 dma_unmap_single(client->chan->mbox->dev, pkt->pa_base, pkt->buf_size,
    DMA_TO_DEVICE);
 kfree(pkt->va_base);
 kfree(pkt);
}
