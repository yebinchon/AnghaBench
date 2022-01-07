
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct virtproc_info {TYPE_2__* vdev; } ;
struct TYPE_6__ {int release; struct device* parent; } ;
struct TYPE_4__ {int name; } ;
struct rpmsg_device {scalar_t__ src; int announce; TYPE_3__ dev; TYPE_1__ id; int * ops; int dst; } ;
struct virtio_rpmsg_channel {struct rpmsg_device rpdev; struct virtproc_info* vrp; } ;
struct rpmsg_channel_info {scalar_t__ src; int name; int dst; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device dev; } ;


 int GFP_KERNEL ;
 scalar_t__ RPMSG_ADDR_ANY ;
 int RPMSG_NAME_SIZE ;
 int dev_err (struct device*,char*,int ,scalar_t__,int ) ;
 struct virtio_rpmsg_channel* kzalloc (int,int ) ;
 int put_device (struct device*) ;
 struct device* rpmsg_find_device (struct device*,struct rpmsg_channel_info*) ;
 int rpmsg_register_device (struct rpmsg_device*) ;
 int strncpy (int ,int ,int ) ;
 int virtio_rpmsg_ops ;
 int virtio_rpmsg_release_device ;

__attribute__((used)) static struct rpmsg_device *rpmsg_create_channel(struct virtproc_info *vrp,
       struct rpmsg_channel_info *chinfo)
{
 struct virtio_rpmsg_channel *vch;
 struct rpmsg_device *rpdev;
 struct device *tmp, *dev = &vrp->vdev->dev;
 int ret;


 tmp = rpmsg_find_device(dev, chinfo);
 if (tmp) {

  put_device(tmp);
  dev_err(dev, "channel %s:%x:%x already exist\n",
    chinfo->name, chinfo->src, chinfo->dst);
  return ((void*)0);
 }

 vch = kzalloc(sizeof(*vch), GFP_KERNEL);
 if (!vch)
  return ((void*)0);


 vch->vrp = vrp;


 rpdev = &vch->rpdev;
 rpdev->src = chinfo->src;
 rpdev->dst = chinfo->dst;
 rpdev->ops = &virtio_rpmsg_ops;





 rpdev->announce = rpdev->src != RPMSG_ADDR_ANY;

 strncpy(rpdev->id.name, chinfo->name, RPMSG_NAME_SIZE);

 rpdev->dev.parent = &vrp->vdev->dev;
 rpdev->dev.release = virtio_rpmsg_release_device;
 ret = rpmsg_register_device(rpdev);
 if (ret)
  return ((void*)0);

 return rpdev;
}
