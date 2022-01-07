
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int list; } ;
struct cxgbit_device {int list; TYPE_1__ cskq; } ;


 int cdev_list_lock ;
 int cxgbit_close_conn (struct cxgbit_device*) ;
 int cxgbit_put_cdev (struct cxgbit_device*) ;
 int list_del (int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void cxgbit_detach_cdev(struct cxgbit_device *cdev)
{
 bool free_cdev = 0;

 spin_lock_bh(&cdev->cskq.lock);
 if (list_empty(&cdev->cskq.list))
  free_cdev = 1;
 spin_unlock_bh(&cdev->cskq.lock);

 if (free_cdev) {
  mutex_lock(&cdev_list_lock);
  list_del(&cdev->list);
  mutex_unlock(&cdev_list_lock);

  cxgbit_put_cdev(cdev);
 } else {
  cxgbit_close_conn(cdev);
 }
}
