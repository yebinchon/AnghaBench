
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfio_ccw_private {scalar_t__ state; int num_regions; TYPE_2__* region; int nb; int cp; } ;
struct mdev_device {int dummy; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* release ) (struct vfio_ccw_private*,TYPE_2__*) ;} ;


 scalar_t__ VFIO_CCW_STATE_NOT_OPER ;
 scalar_t__ VFIO_CCW_STATE_STANDBY ;
 int VFIO_IOMMU_NOTIFY ;
 int cp_free (int *) ;
 struct vfio_ccw_private* dev_get_drvdata (int ) ;
 int kfree (TYPE_2__*) ;
 int mdev_dev (struct mdev_device*) ;
 int mdev_parent_dev (struct mdev_device*) ;
 int stub1 (struct vfio_ccw_private*,TYPE_2__*) ;
 int vfio_ccw_mdev_reset (struct mdev_device*) ;
 int vfio_unregister_notifier (int ,int ,int *) ;

__attribute__((used)) static void vfio_ccw_mdev_release(struct mdev_device *mdev)
{
 struct vfio_ccw_private *private =
  dev_get_drvdata(mdev_parent_dev(mdev));
 int i;

 if ((private->state != VFIO_CCW_STATE_NOT_OPER) &&
     (private->state != VFIO_CCW_STATE_STANDBY)) {
  if (!vfio_ccw_mdev_reset(mdev))
   private->state = VFIO_CCW_STATE_STANDBY;

 }

 cp_free(&private->cp);
 vfio_unregister_notifier(mdev_dev(mdev), VFIO_IOMMU_NOTIFY,
     &private->nb);

 for (i = 0; i < private->num_regions; i++)
  private->region[i].ops->release(private, &private->region[i]);

 private->num_regions = 0;
 kfree(private->region);
 private->region = ((void*)0);
}
