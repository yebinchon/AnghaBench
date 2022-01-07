
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct file {struct doorbell_queue* private_data; } ;
struct doorbell_queue {scalar_t__ head; scalar_t__ tail; int lock; int wait; } ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static __poll_t fsl_hv_poll(struct file *filp, struct poll_table_struct *p)
{
 struct doorbell_queue *dbq = filp->private_data;
 unsigned long flags;
 __poll_t mask;

 spin_lock_irqsave(&dbq->lock, flags);

 poll_wait(filp, &dbq->wait, p);
 mask = (dbq->head == dbq->tail) ? 0 : (EPOLLIN | EPOLLRDNORM);

 spin_unlock_irqrestore(&dbq->lock, flags);

 return mask;
}
