
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virqfd {int dummy; } ;


 int flush_workqueue (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vfio_irqfd_cleanup_wq ;
 int virqfd_deactivate (struct virqfd*) ;
 int virqfd_lock ;

void vfio_virqfd_disable(struct virqfd **pvirqfd)
{
 unsigned long flags;

 spin_lock_irqsave(&virqfd_lock, flags);

 if (*pvirqfd) {
  virqfd_deactivate(*pvirqfd);
  *pvirqfd = ((void*)0);
 }

 spin_unlock_irqrestore(&virqfd_lock, flags);






 flush_workqueue(vfio_irqfd_cleanup_wq);
}
