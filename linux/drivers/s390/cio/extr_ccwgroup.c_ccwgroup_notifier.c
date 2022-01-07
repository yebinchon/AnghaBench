
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct ccwgroup_device {int ungroup_work; int dev; } ;


 unsigned long BUS_NOTIFY_UNBIND_DRIVER ;
 int NOTIFY_OK ;
 int get_device (int *) ;
 int schedule_work (int *) ;
 struct ccwgroup_device* to_ccwgroupdev (void*) ;

__attribute__((used)) static int ccwgroup_notifier(struct notifier_block *nb, unsigned long action,
        void *data)
{
 struct ccwgroup_device *gdev = to_ccwgroupdev(data);

 if (action == BUS_NOTIFY_UNBIND_DRIVER) {
  get_device(&gdev->dev);
  schedule_work(&gdev->ungroup_work);
 }

 return NOTIFY_OK;
}
