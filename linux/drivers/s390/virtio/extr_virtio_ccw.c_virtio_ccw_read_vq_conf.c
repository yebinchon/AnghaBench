
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vq_config_block {int dummy; } ;
struct virtio_ccw_device {TYPE_2__* dma_area; } ;
struct ccw1 {int count; scalar_t__ cda; scalar_t__ flags; int cmd_code; } ;
typedef scalar_t__ __u32 ;
struct TYPE_3__ {int index; scalar_t__ num; } ;
struct TYPE_4__ {TYPE_1__ config_block; } ;


 int CCW_CMD_READ_VQ_CONF ;
 int ENOENT ;
 int VIRTIO_CCW_DOING_READ_VQ_CONF ;
 int ccw_io_helper (struct virtio_ccw_device*,struct ccw1*,int ) ;

__attribute__((used)) static int virtio_ccw_read_vq_conf(struct virtio_ccw_device *vcdev,
       struct ccw1 *ccw, int index)
{
 int ret;

 vcdev->dma_area->config_block.index = index;
 ccw->cmd_code = CCW_CMD_READ_VQ_CONF;
 ccw->flags = 0;
 ccw->count = sizeof(struct vq_config_block);
 ccw->cda = (__u32)(unsigned long)(&vcdev->dma_area->config_block);
 ret = ccw_io_helper(vcdev, ccw, VIRTIO_CCW_DOING_READ_VQ_CONF);
 if (ret)
  return ret;
 return vcdev->dma_area->config_block.num ?: -ENOENT;
}
