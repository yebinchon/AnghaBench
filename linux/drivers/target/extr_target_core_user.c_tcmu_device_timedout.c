
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmu_dev {int timedout_entry; } ;


 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tcmu_unmap_work ;
 int timed_out_udevs ;
 int timed_out_udevs_lock ;

__attribute__((used)) static void tcmu_device_timedout(struct tcmu_dev *udev)
{
 spin_lock(&timed_out_udevs_lock);
 if (list_empty(&udev->timedout_entry))
  list_add_tail(&udev->timedout_entry, &timed_out_udevs);
 spin_unlock(&timed_out_udevs_lock);

 schedule_delayed_work(&tcmu_unmap_work, 0);
}
