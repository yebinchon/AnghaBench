
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_ccw_device {int curr_io; TYPE_1__* cdev; int wait_q; } ;
typedef int __u32 ;
struct TYPE_2__ {int dev; } ;
 int WARN_ON (int) ;
 int dev_warn (int *,char*,int) ;
 int wake_up (int *) ;

__attribute__((used)) static void virtio_ccw_check_activity(struct virtio_ccw_device *vcdev,
          __u32 activity)
{
 if (vcdev->curr_io & activity) {
  switch (activity) {
  case 139:
  case 129:
  case 140:
  case 130:
  case 128:
  case 138:
  case 131:
  case 134:
  case 135:
  case 136:
  case 137:
  case 133:
  case 132:
   vcdev->curr_io &= ~activity;
   wake_up(&vcdev->wait_q);
   break;
  default:

   dev_warn(&vcdev->cdev->dev,
     "Suspicious activity '%08x'\n", activity);
   WARN_ON(1);
   break;
  }
 }
}
