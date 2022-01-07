
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct virtio_feature_desc {int index; int count; void* cda; scalar_t__ flags; void* cmd_code; void* features; } ;
struct virtio_device {int features; int dev; } ;
struct virtio_ccw_device {int revision; int cdev; } ;
struct ccw1 {int index; int count; void* cda; scalar_t__ flags; void* cmd_code; void* features; } ;
typedef void* __u32 ;


 void* CCW_CMD_WRITE_FEAT ;
 int EINVAL ;
 int ENOMEM ;
 int VIRTIO_CCW_DOING_WRITE_FEAT ;
 int VIRTIO_F_VERSION_1 ;
 int __virtio_test_bit (struct virtio_device*,int ) ;
 int ccw_device_dma_free (int ,struct virtio_feature_desc*,int) ;
 struct virtio_feature_desc* ccw_device_dma_zalloc (int ,int) ;
 int ccw_io_helper (struct virtio_ccw_device*,struct virtio_feature_desc*,int ) ;
 int ccw_transport_features (struct virtio_device*) ;
 void* cpu_to_le32 (int) ;
 int dev_err (int *,char*) ;
 struct virtio_ccw_device* to_vc_device (struct virtio_device*) ;
 int vring_transport_features (struct virtio_device*) ;

__attribute__((used)) static int virtio_ccw_finalize_features(struct virtio_device *vdev)
{
 struct virtio_ccw_device *vcdev = to_vc_device(vdev);
 struct virtio_feature_desc *features;
 struct ccw1 *ccw;
 int ret;

 if (vcdev->revision >= 1 &&
     !__virtio_test_bit(vdev, VIRTIO_F_VERSION_1)) {
  dev_err(&vdev->dev, "virtio: device uses revision 1 "
   "but does not have VIRTIO_F_VERSION_1\n");
  return -EINVAL;
 }

 ccw = ccw_device_dma_zalloc(vcdev->cdev, sizeof(*ccw));
 if (!ccw)
  return -ENOMEM;

 features = ccw_device_dma_zalloc(vcdev->cdev, sizeof(*features));
 if (!features) {
  ret = -ENOMEM;
  goto out_free;
 }

 vring_transport_features(vdev);


 ccw_transport_features(vdev);

 features->index = 0;
 features->features = cpu_to_le32((u32)vdev->features);

 ccw->cmd_code = CCW_CMD_WRITE_FEAT;
 ccw->flags = 0;
 ccw->count = sizeof(*features);
 ccw->cda = (__u32)(unsigned long)features;
 ret = ccw_io_helper(vcdev, ccw, VIRTIO_CCW_DOING_WRITE_FEAT);
 if (ret)
  goto out_free;

 if (vcdev->revision == 0)
  goto out_free;

 features->index = 1;
 features->features = cpu_to_le32(vdev->features >> 32);

 ccw->cmd_code = CCW_CMD_WRITE_FEAT;
 ccw->flags = 0;
 ccw->count = sizeof(*features);
 ccw->cda = (__u32)(unsigned long)features;
 ret = ccw_io_helper(vcdev, ccw, VIRTIO_CCW_DOING_WRITE_FEAT);

out_free:
 ccw_device_dma_free(vcdev->cdev, features, sizeof(*features));
 ccw_device_dma_free(vcdev->cdev, ccw, sizeof(*ccw));

 return ret;
}
