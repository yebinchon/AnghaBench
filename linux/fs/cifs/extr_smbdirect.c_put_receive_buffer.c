
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int length; int addr; } ;
struct smbd_response {int list; TYPE_2__ sge; } ;
struct smbd_connection {int post_send_credits_work; int workqueue; int receive_queue_lock; int count_put_receive_buffer; int count_receive_queue; int receive_queue; TYPE_1__* id; } ;
struct TYPE_3__ {int device; } ;


 int DMA_FROM_DEVICE ;
 int ib_dma_unmap_single (int ,int ,int ,int ) ;
 int list_add_tail (int *,int *) ;
 int queue_work (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void put_receive_buffer(
 struct smbd_connection *info, struct smbd_response *response)
{
 unsigned long flags;

 ib_dma_unmap_single(info->id->device, response->sge.addr,
  response->sge.length, DMA_FROM_DEVICE);

 spin_lock_irqsave(&info->receive_queue_lock, flags);
 list_add_tail(&response->list, &info->receive_queue);
 info->count_receive_queue++;
 info->count_put_receive_buffer++;
 spin_unlock_irqrestore(&info->receive_queue_lock, flags);

 queue_work(info->workqueue, &info->post_send_credits_work);
}
