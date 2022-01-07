
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {scalar_t__ private_data; } ;
struct eerbuffer {scalar_t__ head; scalar_t__ tail; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 int EPOLLRDNORM ;
 int bufferlock ;
 int dasd_eer_read_wait_queue ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static __poll_t dasd_eer_poll(struct file *filp, poll_table *ptable)
{
 __poll_t mask;
 unsigned long flags;
 struct eerbuffer *eerb;

 eerb = (struct eerbuffer *) filp->private_data;
 poll_wait(filp, &dasd_eer_read_wait_queue, ptable);
 spin_lock_irqsave(&bufferlock, flags);
 if (eerb->head != eerb->tail)
  mask = EPOLLIN | EPOLLRDNORM ;
 else
  mask = 0;
 spin_unlock_irqrestore(&bufferlock, flags);
 return mask;
}
