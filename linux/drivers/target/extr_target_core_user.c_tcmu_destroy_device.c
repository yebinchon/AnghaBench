
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmu_dev {int kref; int uio_info; int node; int qfull_timer; int cmd_timer; } ;
struct se_device {int dummy; } ;


 struct tcmu_dev* TCMU_DEV (struct se_device*) ;
 int del_timer_sync (int *) ;
 int kref_put (int *,int ) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int root_udev_mutex ;
 int tcmu_dev_kref_release ;
 int tcmu_send_dev_remove_event (struct tcmu_dev*) ;
 int uio_unregister_device (int *) ;

__attribute__((used)) static void tcmu_destroy_device(struct se_device *dev)
{
 struct tcmu_dev *udev = TCMU_DEV(dev);

 del_timer_sync(&udev->cmd_timer);
 del_timer_sync(&udev->qfull_timer);

 mutex_lock(&root_udev_mutex);
 list_del(&udev->node);
 mutex_unlock(&root_udev_mutex);

 tcmu_send_dev_remove_event(udev);

 uio_unregister_device(&udev->uio_info);


 kref_put(&udev->kref, tcmu_dev_kref_release);
}
