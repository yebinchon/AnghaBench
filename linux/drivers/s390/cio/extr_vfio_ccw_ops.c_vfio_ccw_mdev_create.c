
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfio_ccw_private {scalar_t__ state; TYPE_2__* sch; struct mdev_device* mdev; int avail; } ;
struct mdev_device {int dummy; } ;
struct kobject {int dummy; } ;
struct TYPE_3__ {int sch_no; int ssid; int cssid; } ;
struct TYPE_4__ {TYPE_1__ schid; } ;


 int ENODEV ;
 int EPERM ;
 int VFIO_CCW_MSG_EVENT (int,char*,int ,int ,int ,int ) ;
 scalar_t__ VFIO_CCW_STATE_IDLE ;
 scalar_t__ VFIO_CCW_STATE_NOT_OPER ;
 scalar_t__ atomic_dec_if_positive (int *) ;
 struct vfio_ccw_private* dev_get_drvdata (int ) ;
 int mdev_parent_dev (struct mdev_device*) ;
 int mdev_uuid (struct mdev_device*) ;

__attribute__((used)) static int vfio_ccw_mdev_create(struct kobject *kobj, struct mdev_device *mdev)
{
 struct vfio_ccw_private *private =
  dev_get_drvdata(mdev_parent_dev(mdev));

 if (private->state == VFIO_CCW_STATE_NOT_OPER)
  return -ENODEV;

 if (atomic_dec_if_positive(&private->avail) < 0)
  return -EPERM;

 private->mdev = mdev;
 private->state = VFIO_CCW_STATE_IDLE;

 VFIO_CCW_MSG_EVENT(2, "mdev %pUl, sch %x.%x.%04x: create\n",
      mdev_uuid(mdev), private->sch->schid.cssid,
      private->sch->schid.ssid,
      private->sch->schid.sch_no);

 return 0;
}
