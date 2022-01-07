
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtqueue {int index; struct virtio_ccw_vq_info* priv; } ;
struct virtio_ccw_vq_info {scalar_t__ cookie; TYPE_1__* vq; } ;
struct virtio_ccw_device {int cdev; } ;
struct subchannel_id {int dummy; } ;
struct TYPE_2__ {int vdev; } ;


 int ccw_device_get_schid (int ,struct subchannel_id*) ;
 scalar_t__ do_kvm_notify (struct subchannel_id,int ,scalar_t__) ;
 struct virtio_ccw_device* to_vc_device (int ) ;

__attribute__((used)) static bool virtio_ccw_kvm_notify(struct virtqueue *vq)
{
 struct virtio_ccw_vq_info *info = vq->priv;
 struct virtio_ccw_device *vcdev;
 struct subchannel_id schid;

 vcdev = to_vc_device(info->vq->vdev);
 ccw_device_get_schid(vcdev->cdev, &schid);
 info->cookie = do_kvm_notify(schid, vq->index, info->cookie);
 if (info->cookie < 0)
  return 0;
 return 1;
}
