
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfio_ccw_private {scalar_t__ state; int avail; int * mdev; int cp; TYPE_2__* sch; } ;
struct mdev_device {int dummy; } ;
struct TYPE_3__ {int sch_no; int ssid; int cssid; } ;
struct TYPE_4__ {TYPE_1__ schid; } ;


 int VFIO_CCW_MSG_EVENT (int,char*,int ,int ,int ,int ) ;
 scalar_t__ VFIO_CCW_STATE_NOT_OPER ;
 scalar_t__ VFIO_CCW_STATE_STANDBY ;
 int atomic_inc (int *) ;
 int cp_free (int *) ;
 struct vfio_ccw_private* dev_get_drvdata (int ) ;
 int mdev_parent_dev (struct mdev_device*) ;
 int mdev_uuid (struct mdev_device*) ;
 int vfio_ccw_sch_quiesce (TYPE_2__*) ;

__attribute__((used)) static int vfio_ccw_mdev_remove(struct mdev_device *mdev)
{
 struct vfio_ccw_private *private =
  dev_get_drvdata(mdev_parent_dev(mdev));

 VFIO_CCW_MSG_EVENT(2, "mdev %pUl, sch %x.%x.%04x: remove\n",
      mdev_uuid(mdev), private->sch->schid.cssid,
      private->sch->schid.ssid,
      private->sch->schid.sch_no);

 if ((private->state != VFIO_CCW_STATE_NOT_OPER) &&
     (private->state != VFIO_CCW_STATE_STANDBY)) {
  if (!vfio_ccw_sch_quiesce(private->sch))
   private->state = VFIO_CCW_STATE_STANDBY;

 }

 cp_free(&private->cp);
 private->mdev = ((void*)0);
 atomic_inc(&private->avail);

 return 0;
}
