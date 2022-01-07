
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vfio_ccw_private {int state; struct subchannel* sch; } ;
struct subchannel {int dummy; } ;
struct mdev_device {int dummy; } ;


 int VFIO_CCW_STATE_IDLE ;
 int cio_enable_subchannel (struct subchannel*,int ) ;
 struct vfio_ccw_private* dev_get_drvdata (int ) ;
 int mdev_parent_dev (struct mdev_device*) ;
 int vfio_ccw_sch_quiesce (struct subchannel*) ;

__attribute__((used)) static int vfio_ccw_mdev_reset(struct mdev_device *mdev)
{
 struct vfio_ccw_private *private;
 struct subchannel *sch;
 int ret;

 private = dev_get_drvdata(mdev_parent_dev(mdev));
 sch = private->sch;
 ret = vfio_ccw_sch_quiesce(sch);
 if (ret)
  return ret;

 ret = cio_enable_subchannel(sch, (u32)(unsigned long)sch);
 if (!ret)
  private->state = VFIO_CCW_STATE_IDLE;

 return ret;
}
