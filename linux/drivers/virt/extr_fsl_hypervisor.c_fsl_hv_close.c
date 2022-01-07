
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct doorbell_queue* private_data; } ;
struct doorbell_queue {int list; } ;


 int db_list_lock ;
 int kfree (struct doorbell_queue*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int fsl_hv_close(struct inode *inode, struct file *filp)
{
 struct doorbell_queue *dbq = filp->private_data;
 unsigned long flags;

 int ret = 0;

 spin_lock_irqsave(&db_list_lock, flags);
 list_del(&dbq->list);
 spin_unlock_irqrestore(&db_list_lock, flags);

 kfree(dbq);

 return ret;
}
