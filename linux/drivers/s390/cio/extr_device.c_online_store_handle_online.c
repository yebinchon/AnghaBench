
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cu_type; } ;
struct ccw_device {TYPE_2__* private; TYPE_1__ id; } ;
struct TYPE_4__ {scalar_t__ state; } ;


 scalar_t__ DEV_STATE_BOXED ;
 scalar_t__ DEV_STATE_NOT_OPER ;
 int ccw_device_stlck (struct ccw_device*) ;
 int online_store_recog_and_online (struct ccw_device*) ;

__attribute__((used)) static int online_store_handle_online(struct ccw_device *cdev, int force)
{
 int ret;

 ret = online_store_recog_and_online(cdev);
 if (ret && !force)
  return ret;
 if (force && cdev->private->state == DEV_STATE_BOXED) {
  ret = ccw_device_stlck(cdev);
  if (ret)
   return ret;
  if (cdev->id.cu_type == 0)
   cdev->private->state = DEV_STATE_NOT_OPER;
  ret = online_store_recog_and_online(cdev);
  if (ret)
   return ret;
 }
 return 0;
}
