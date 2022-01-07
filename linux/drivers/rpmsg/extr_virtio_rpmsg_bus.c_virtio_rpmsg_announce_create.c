
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct virtproc_info {int vdev; } ;
struct virtio_rpmsg_channel {struct virtproc_info* vrp; } ;
struct rpmsg_ns_msg {int flags; int addr; int name; } ;
struct TYPE_3__ {int name; } ;
struct device {int dummy; } ;
struct rpmsg_device {TYPE_2__* ept; TYPE_1__ id; scalar_t__ announce; struct device dev; } ;
typedef int nsm ;
struct TYPE_4__ {int addr; } ;


 int RPMSG_NAME_SIZE ;
 int RPMSG_NS_ADDR ;
 int RPMSG_NS_CREATE ;
 int VIRTIO_RPMSG_F_NS ;
 int dev_err (struct device*,char*,int) ;
 int rpmsg_sendto (TYPE_2__*,struct rpmsg_ns_msg*,int,int ) ;
 int strncpy (int ,int ,int ) ;
 struct virtio_rpmsg_channel* to_virtio_rpmsg_channel (struct rpmsg_device*) ;
 scalar_t__ virtio_has_feature (int ,int ) ;

__attribute__((used)) static int virtio_rpmsg_announce_create(struct rpmsg_device *rpdev)
{
 struct virtio_rpmsg_channel *vch = to_virtio_rpmsg_channel(rpdev);
 struct virtproc_info *vrp = vch->vrp;
 struct device *dev = &rpdev->dev;
 int err = 0;


 if (rpdev->announce && rpdev->ept &&
     virtio_has_feature(vrp->vdev, VIRTIO_RPMSG_F_NS)) {
  struct rpmsg_ns_msg nsm;

  strncpy(nsm.name, rpdev->id.name, RPMSG_NAME_SIZE);
  nsm.addr = rpdev->ept->addr;
  nsm.flags = RPMSG_NS_CREATE;

  err = rpmsg_sendto(rpdev->ept, &nsm, sizeof(nsm), RPMSG_NS_ADDR);
  if (err)
   dev_err(dev, "failed to announce service %d\n", err);
 }

 return err;
}
