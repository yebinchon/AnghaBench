
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct vfio_ccw_private* guest_cp; } ;
struct vfio_ccw_private {TYPE_1__ cp; int io_region; int cmd_region; } ;
struct TYPE_4__ {int sch_no; int ssid; int cssid; } ;
struct subchannel {TYPE_2__ schid; int dev; } ;


 int VFIO_CCW_MSG_EVENT (int,char*,int ,int ,int ) ;
 struct vfio_ccw_private* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int kfree (struct vfio_ccw_private*) ;
 int kmem_cache_free (int ,int ) ;
 int vfio_ccw_cmd_region ;
 int vfio_ccw_io_region ;
 int vfio_ccw_mdev_unreg (struct subchannel*) ;
 int vfio_ccw_sch_quiesce (struct subchannel*) ;

__attribute__((used)) static int vfio_ccw_sch_remove(struct subchannel *sch)
{
 struct vfio_ccw_private *private = dev_get_drvdata(&sch->dev);

 vfio_ccw_sch_quiesce(sch);

 vfio_ccw_mdev_unreg(sch);

 dev_set_drvdata(&sch->dev, ((void*)0));

 kmem_cache_free(vfio_ccw_cmd_region, private->cmd_region);
 kmem_cache_free(vfio_ccw_io_region, private->io_region);
 kfree(private->cp.guest_cp);
 kfree(private);

 VFIO_CCW_MSG_EVENT(4, "unbound from subchannel %x.%x.%04x\n",
      sch->schid.cssid, sch->schid.ssid,
      sch->schid.sch_no);
 return 0;
}
