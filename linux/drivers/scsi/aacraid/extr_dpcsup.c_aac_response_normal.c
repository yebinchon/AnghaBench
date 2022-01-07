
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int XferState; scalar_t__ Command; } ;
struct hw_fib {TYPE_3__ header; scalar_t__ data; } ;
struct fib {int flags; int done; int event_lock; int event_wait; int callback_data; int (* callback ) (int ,struct fib*) ;struct hw_fib* hw_fib_va; } ;
struct aac_queue {int * lock; struct aac_dev* dev; } ;
struct aac_entry {int addr; } ;
struct aac_dev {int manage_lock; int management_fib_count; TYPE_2__* queues; struct fib* fibs; } ;
typedef int __le32 ;
struct TYPE_8__ {int peak_fibs; int zero_fibs; int NormalRecved; int AsyncRecved; int NoResponseRecved; int FibRecved; } ;
struct TYPE_6__ {TYPE_1__* queue; } ;
struct TYPE_5__ {int numpending; } ;


 size_t AdapNormCmdQueue ;
 int AdapterProcessed ;
 int Async ;
 int FIB_CONTEXT_FLAG_FASTRESP ;
 int FIB_CONTEXT_FLAG_TIMED_OUT ;
 int FIB_COUNTER_INCREMENT (int ) ;
 int HostNormRespQueue ;
 int NoResponseExpected ;
 int NuFileSystem ;
 int ST_OK ;
 TYPE_4__ aac_config ;
 int aac_consumer_free (struct aac_dev*,struct aac_queue*,int ) ;
 scalar_t__ aac_consumer_get (struct aac_dev*,struct aac_queue*,struct aac_entry**) ;
 int aac_fib_complete (struct fib*) ;
 int aac_fib_free (struct fib*) ;
 int atomic_dec (int *) ;
 int complete (int *) ;
 scalar_t__ cpu_to_le16 (int ) ;
 int cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,struct fib*) ;
 scalar_t__ unlikely (int) ;

unsigned int aac_response_normal(struct aac_queue * q)
{
 struct aac_dev * dev = q->dev;
 struct aac_entry *entry;
 struct hw_fib * hwfib;
 struct fib * fib;
 int consumed = 0;
 unsigned long flags, mflags;

 spin_lock_irqsave(q->lock, flags);






 while(aac_consumer_get(dev, q, &entry))
 {
  int fast;
  u32 index = le32_to_cpu(entry->addr);
  fast = index & 0x01;
  fib = &dev->fibs[index >> 2];
  hwfib = fib->hw_fib_va;

  aac_consumer_free(dev, q, HostNormRespQueue);
  atomic_dec(&dev->queues->queue[AdapNormCmdQueue].numpending);

  if (unlikely(fib->flags & FIB_CONTEXT_FLAG_TIMED_OUT)) {
   spin_unlock_irqrestore(q->lock, flags);
   aac_fib_complete(fib);
   aac_fib_free(fib);
   spin_lock_irqsave(q->lock, flags);
   continue;
  }
  spin_unlock_irqrestore(q->lock, flags);

  if (fast) {



   *(__le32 *)hwfib->data = cpu_to_le32(ST_OK);
   hwfib->header.XferState |= cpu_to_le32(AdapterProcessed);
   fib->flags |= FIB_CONTEXT_FLAG_FASTRESP;
  }

  FIB_COUNTER_INCREMENT(aac_config.FibRecved);

  if (hwfib->header.Command == cpu_to_le16(NuFileSystem))
  {
   __le32 *pstatus = (__le32 *)hwfib->data;
   if (*pstatus & cpu_to_le32(0xffff0000))
    *pstatus = cpu_to_le32(ST_OK);
  }
  if (hwfib->header.XferState & cpu_to_le32(NoResponseExpected | Async))
  {
          if (hwfib->header.XferState & cpu_to_le32(NoResponseExpected))
    FIB_COUNTER_INCREMENT(aac_config.NoResponseRecved);
   else
    FIB_COUNTER_INCREMENT(aac_config.AsyncRecved);




   fib->callback(fib->callback_data, fib);
  } else {
   unsigned long flagv;
   spin_lock_irqsave(&fib->event_lock, flagv);
   if (!fib->done) {
    fib->done = 1;
    complete(&fib->event_wait);
   }
   spin_unlock_irqrestore(&fib->event_lock, flagv);

   spin_lock_irqsave(&dev->manage_lock, mflags);
   dev->management_fib_count--;
   spin_unlock_irqrestore(&dev->manage_lock, mflags);

   FIB_COUNTER_INCREMENT(aac_config.NormalRecved);
   if (fib->done == 2) {
    spin_lock_irqsave(&fib->event_lock, flagv);
    fib->done = 0;
    spin_unlock_irqrestore(&fib->event_lock, flagv);
    aac_fib_complete(fib);
    aac_fib_free(fib);
   }
  }
  consumed++;
  spin_lock_irqsave(q->lock, flags);
 }

 if (consumed > aac_config.peak_fibs)
  aac_config.peak_fibs = consumed;
 if (consumed == 0)
  aac_config.zero_fibs++;

 spin_unlock_irqrestore(q->lock, flags);
 return 0;
}
