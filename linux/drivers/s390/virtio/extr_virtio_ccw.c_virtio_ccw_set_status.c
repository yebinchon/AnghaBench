
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct virtio_device {int dummy; } ;
struct virtio_ccw_device {int cdev; TYPE_1__* dma_area; } ;
struct ccw1 {int count; scalar_t__ cda; scalar_t__ flags; int cmd_code; } ;
typedef int status ;
typedef scalar_t__ __u32 ;
struct TYPE_2__ {void* status; } ;


 int CCW_CMD_WRITE_STATUS ;
 int VIRTIO_CCW_DOING_WRITE_STATUS ;
 int ccw_device_dma_free (int ,struct ccw1*,int) ;
 struct ccw1* ccw_device_dma_zalloc (int ,int) ;
 int ccw_io_helper (struct virtio_ccw_device*,struct ccw1*,int ) ;
 struct virtio_ccw_device* to_vc_device (struct virtio_device*) ;

__attribute__((used)) static void virtio_ccw_set_status(struct virtio_device *vdev, u8 status)
{
 struct virtio_ccw_device *vcdev = to_vc_device(vdev);
 u8 old_status = vcdev->dma_area->status;
 struct ccw1 *ccw;
 int ret;

 ccw = ccw_device_dma_zalloc(vcdev->cdev, sizeof(*ccw));
 if (!ccw)
  return;


 vcdev->dma_area->status = status;
 ccw->cmd_code = CCW_CMD_WRITE_STATUS;
 ccw->flags = 0;
 ccw->count = sizeof(status);
 ccw->cda = (__u32)(unsigned long)&vcdev->dma_area->status;
 ret = ccw_io_helper(vcdev, ccw, VIRTIO_CCW_DOING_WRITE_STATUS);

 if (ret)
  vcdev->dma_area->status = old_status;
 ccw_device_dma_free(vcdev->cdev, ccw, sizeof(*ccw));
}
