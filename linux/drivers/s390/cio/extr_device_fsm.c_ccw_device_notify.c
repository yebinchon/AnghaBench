
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ccw_device {TYPE_1__* drv; TYPE_3__* private; int online; } ;
struct TYPE_5__ {int devno; int ssid; } ;
struct TYPE_6__ {TYPE_2__ dev_id; } ;
struct TYPE_4__ {scalar_t__ (* notify ) (struct ccw_device*,int) ;} ;


 int CIO_MSG_EVENT (int,char*,int ,int ,int) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int NOTIFY_BAD ;
 int NOTIFY_OK ;
 scalar_t__ stub1 (struct ccw_device*,int) ;

int ccw_device_notify(struct ccw_device *cdev, int event)
{
 int ret = -EINVAL;

 if (!cdev->drv)
  goto out;
 if (!cdev->online)
  goto out;
 CIO_MSG_EVENT(2, "notify called for 0.%x.%04x, event=%d\n",
        cdev->private->dev_id.ssid, cdev->private->dev_id.devno,
        event);
 if (!cdev->drv->notify) {
  ret = -EOPNOTSUPP;
  goto out;
 }
 if (cdev->drv->notify(cdev, event))
  ret = NOTIFY_OK;
 else
  ret = NOTIFY_BAD;
out:
 return ret;
}
