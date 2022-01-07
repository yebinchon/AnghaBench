
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct hw_fib {scalar_t__ data; } ;
struct fib {int size; int fiblink; struct aac_dev* dev; scalar_t__ data; struct hw_fib* hw_fib_va; int type; } ;
struct aac_queue {int lock; int cmdready; int cmdq; struct aac_dev* dev; } ;
struct aac_entry {int addr; } ;
struct aac_dev {scalar_t__ aif_thread; struct hw_fib* aif_base_va; } ;
typedef int __le32 ;


 int FSAFS_NTC_FIB_CONTEXT ;
 int GFP_ATOMIC ;
 int HostNormCmdQueue ;
 int INIT_LIST_HEAD (int *) ;
 int ST_OK ;
 int aac_consumer_free (struct aac_dev*,struct aac_queue*,int ) ;
 scalar_t__ aac_consumer_get (struct aac_dev*,struct aac_queue*,struct aac_entry**) ;
 int aac_fib_adapter_complete (struct fib*,int) ;
 int cpu_to_le32 (int ) ;
 struct fib* kmalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int list_add_tail (int *,int *) ;
 int memset (struct fib*,int ,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wake_up_interruptible (int *) ;

unsigned int aac_command_normal(struct aac_queue *q)
{
 struct aac_dev * dev = q->dev;
 struct aac_entry *entry;
 unsigned long flags;

 spin_lock_irqsave(q->lock, flags);






 while(aac_consumer_get(dev, q, &entry))
 {
  struct fib fibctx;
  struct hw_fib * hw_fib;
  u32 index;
  struct fib *fib = &fibctx;

  index = le32_to_cpu(entry->addr) / sizeof(struct hw_fib);
  hw_fib = &dev->aif_base_va[index];






  if (dev->aif_thread)
   if((fib = kmalloc(sizeof(struct fib), GFP_ATOMIC)) == ((void*)0))
    fib = &fibctx;

  memset(fib, 0, sizeof(struct fib));
  INIT_LIST_HEAD(&fib->fiblink);
  fib->type = FSAFS_NTC_FIB_CONTEXT;
  fib->size = sizeof(struct fib);
  fib->hw_fib_va = hw_fib;
  fib->data = hw_fib->data;
  fib->dev = dev;


  if (dev->aif_thread && fib != &fibctx) {
          list_add_tail(&fib->fiblink, &q->cmdq);
           aac_consumer_free(dev, q, HostNormCmdQueue);
          wake_up_interruptible(&q->cmdready);
  } else {
           aac_consumer_free(dev, q, HostNormCmdQueue);
   spin_unlock_irqrestore(q->lock, flags);



   *(__le32 *)hw_fib->data = cpu_to_le32(ST_OK);
   aac_fib_adapter_complete(fib, sizeof(u32));
   spin_lock_irqsave(q->lock, flags);
  }
 }
 spin_unlock_irqrestore(q->lock, flags);
 return 0;
}
