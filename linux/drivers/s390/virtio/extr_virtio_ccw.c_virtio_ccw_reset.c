
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_device {int dummy; } ;
struct virtio_ccw_device {int cdev; TYPE_1__* dma_area; } ;
struct ccw1 {scalar_t__ cda; scalar_t__ count; scalar_t__ flags; int cmd_code; } ;
struct TYPE_2__ {scalar_t__ status; } ;


 int CCW_CMD_VDEV_RESET ;
 int VIRTIO_CCW_DOING_RESET ;
 int ccw_device_dma_free (int ,struct ccw1*,int) ;
 struct ccw1* ccw_device_dma_zalloc (int ,int) ;
 int ccw_io_helper (struct virtio_ccw_device*,struct ccw1*,int ) ;
 struct virtio_ccw_device* to_vc_device (struct virtio_device*) ;

__attribute__((used)) static void virtio_ccw_reset(struct virtio_device *vdev)
{
 struct virtio_ccw_device *vcdev = to_vc_device(vdev);
 struct ccw1 *ccw;

 ccw = ccw_device_dma_zalloc(vcdev->cdev, sizeof(*ccw));
 if (!ccw)
  return;


 vcdev->dma_area->status = 0;


 ccw->cmd_code = CCW_CMD_VDEV_RESET;
 ccw->flags = 0;
 ccw->count = 0;
 ccw->cda = 0;
 ccw_io_helper(vcdev, ccw, VIRTIO_CCW_DOING_RESET);
 ccw_device_dma_free(vcdev->cdev, ccw, sizeof(*ccw));
}
