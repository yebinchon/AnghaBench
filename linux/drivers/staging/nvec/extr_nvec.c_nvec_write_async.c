
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvec_msg {short* data; short size; int node; } ;
struct nvec_chip {int tx_work; int tx_lock; int tx_data; } ;


 int ENOMEM ;
 int NVEC_MSG_TX ;
 int list_add_tail (int *,int *) ;
 int memcpy (short*,unsigned char const*,short) ;
 struct nvec_msg* nvec_msg_alloc (struct nvec_chip*,int ) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int nvec_write_async(struct nvec_chip *nvec, const unsigned char *data,
       short size)
{
 struct nvec_msg *msg;
 unsigned long flags;

 msg = nvec_msg_alloc(nvec, NVEC_MSG_TX);

 if (!msg)
  return -ENOMEM;

 msg->data[0] = size;
 memcpy(msg->data + 1, data, size);
 msg->size = size + 1;

 spin_lock_irqsave(&nvec->tx_lock, flags);
 list_add_tail(&msg->node, &nvec->tx_data);
 spin_unlock_irqrestore(&nvec->tx_lock, flags);

 schedule_work(&nvec->tx_work);

 return 0;
}
