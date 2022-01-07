
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct doorbell_queue* private_data; } ;
struct doorbell_queue {int list; int wait; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int db_list ;
 int db_list_lock ;
 int init_waitqueue_head (int *) ;
 struct doorbell_queue* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int pr_err (char*) ;
 int spin_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int fsl_hv_open(struct inode *inode, struct file *filp)
{
 struct doorbell_queue *dbq;
 unsigned long flags;
 int ret = 0;

 dbq = kzalloc(sizeof(struct doorbell_queue), GFP_KERNEL);
 if (!dbq) {
  pr_err("fsl-hv: out of memory\n");
  return -ENOMEM;
 }

 spin_lock_init(&dbq->lock);
 init_waitqueue_head(&dbq->wait);

 spin_lock_irqsave(&db_list_lock, flags);
 list_add(&dbq->list, &db_list);
 spin_unlock_irqrestore(&db_list_lock, flags);

 filp->private_data = dbq;

 return ret;
}
