
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct cmdq_pkt* data; int cb; } ;
struct TYPE_6__ {void* data; int cb; } ;
struct cmdq_pkt {int cmd_buf_size; int pa_base; TYPE_2__ async_cb; TYPE_1__ cb; scalar_t__ cl; } ;
struct cmdq_client {scalar_t__ timeout_ms; TYPE_4__* chan; int lock; int timer; int pkt_cnt; } ;
typedef int cmdq_async_flush_cb ;
struct TYPE_9__ {TYPE_3__* mbox; } ;
struct TYPE_8__ {int dev; } ;


 scalar_t__ CMDQ_NO_TIMEOUT ;
 int DMA_TO_DEVICE ;
 int cmdq_pkt_finalize (struct cmdq_pkt*) ;
 int cmdq_pkt_flush_async_cb ;
 int dma_sync_single_for_device (int ,int ,int ,int ) ;
 scalar_t__ jiffies ;
 int mbox_client_txdone (TYPE_4__*,int ) ;
 int mbox_send_message (TYPE_4__*,struct cmdq_pkt*) ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int cmdq_pkt_flush_async(struct cmdq_pkt *pkt, cmdq_async_flush_cb cb,
    void *data)
{
 int err;
 unsigned long flags = 0;
 struct cmdq_client *client = (struct cmdq_client *)pkt->cl;

 err = cmdq_pkt_finalize(pkt);
 if (err < 0)
  return err;

 pkt->cb.cb = cb;
 pkt->cb.data = data;
 pkt->async_cb.cb = cmdq_pkt_flush_async_cb;
 pkt->async_cb.data = pkt;

 dma_sync_single_for_device(client->chan->mbox->dev, pkt->pa_base,
       pkt->cmd_buf_size, DMA_TO_DEVICE);

 if (client->timeout_ms != CMDQ_NO_TIMEOUT) {
  spin_lock_irqsave(&client->lock, flags);
  if (client->pkt_cnt++ == 0)
   mod_timer(&client->timer, jiffies +
      msecs_to_jiffies(client->timeout_ms));
  spin_unlock_irqrestore(&client->lock, flags);
 }

 mbox_send_message(client->chan, pkt);

 mbox_client_txdone(client->chan, 0);

 return 0;
}
