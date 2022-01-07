
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct visorchannel {int insert_lock; scalar_t__ needs_lock; } ;


 int signalinsert_inner (struct visorchannel*,int ,void*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int visorchannel_signalinsert(struct visorchannel *channel, u32 queue,
         void *msg)
{
 int rc;
 unsigned long flags;

 if (channel->needs_lock) {
  spin_lock_irqsave(&channel->insert_lock, flags);
  rc = signalinsert_inner(channel, queue, msg);
  spin_unlock_irqrestore(&channel->insert_lock, flags);
 } else {
  rc = signalinsert_inner(channel, queue, msg);
 }

 return rc;
}
