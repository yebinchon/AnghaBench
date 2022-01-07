
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int XEN_MC_NONURGENT ;
 int XEN_MC_URGENT ;
 int mc_queue_handle (int ) ;
 int mcelog_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 int wake_up_interruptible (int *) ;
 int xen_mce_chrdev_wait ;

__attribute__((used)) static void xen_mce_work_fn(struct work_struct *work)
{
 int err;

 mutex_lock(&mcelog_lock);


 err = mc_queue_handle(XEN_MC_URGENT);
 if (err)
  pr_err("Failed to handle urgent mc_info queue, continue handling nonurgent mc_info queue anyway\n");


 err = mc_queue_handle(XEN_MC_NONURGENT);
 if (err)
  pr_err("Failed to handle nonurgent mc_info queue\n");


 wake_up_interruptible(&xen_mce_chrdev_wait);

 mutex_unlock(&mcelog_lock);
}
