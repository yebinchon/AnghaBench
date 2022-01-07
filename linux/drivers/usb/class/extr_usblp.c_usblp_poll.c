
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usblp {int lock; scalar_t__ wcomplete; scalar_t__ no_paper; scalar_t__ rcomplete; scalar_t__ bidir; int wwait; int rwait; } ;
struct poll_table_struct {int dummy; } ;
struct file {struct usblp* private_data; } ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static __poll_t usblp_poll(struct file *file, struct poll_table_struct *wait)
{
 __poll_t ret;
 unsigned long flags;

 struct usblp *usblp = file->private_data;

 poll_wait(file, &usblp->rwait, wait);
 poll_wait(file, &usblp->wwait, wait);
 spin_lock_irqsave(&usblp->lock, flags);
 ret = ((usblp->bidir && usblp->rcomplete) ? EPOLLIN | EPOLLRDNORM : 0) |
    ((usblp->no_paper || usblp->wcomplete) ? EPOLLOUT | EPOLLWRNORM : 0);
 spin_unlock_irqrestore(&usblp->lock, flags);
 return ret;
}
