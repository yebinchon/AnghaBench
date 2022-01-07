
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct ccw_device {TYPE_2__* drv; scalar_t__ online; TYPE_1__* private; } ;
struct TYPE_4__ {int (* prepare ) (struct ccw_device*) ;} ;
struct TYPE_3__ {int onoff; int todo_work; } ;


 int EAGAIN ;
 scalar_t__ atomic_read (int *) ;
 int stub1 (struct ccw_device*) ;
 struct ccw_device* to_ccwdev (struct device*) ;
 scalar_t__ work_pending (int *) ;

__attribute__((used)) static int ccw_device_pm_prepare(struct device *dev)
{
 struct ccw_device *cdev = to_ccwdev(dev);

 if (work_pending(&cdev->private->todo_work))
  return -EAGAIN;

 if (atomic_read(&cdev->private->onoff))
  return -EAGAIN;

 if (cdev->online && cdev->drv && cdev->drv->prepare)
  return cdev->drv->prepare(cdev);

 return 0;
}
