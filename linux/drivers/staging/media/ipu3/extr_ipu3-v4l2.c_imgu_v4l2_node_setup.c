
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int u32 ;
struct TYPE_16__ {int * ops; } ;
struct video_device {TYPE_5__ entity; int vfl_dir; struct vb2_queue* queue; int * v4l2_dev; int * lock; int * fops; int release; int name; } ;
struct vb2_queue {scalar_t__ type; int io_modes; int buf_struct_size; int * lock; struct imgu_device* drv_priv; scalar_t__ min_buffers_needed; int timestamp_flags; int * mem_ops; int * ops; } ;
struct v4l2_subdev {TYPE_5__ entity; } ;
struct v4l2_pix_format_mplane {int width; int height; int num_planes; int pixelformat; int xfer_func; int quantization; int ycbcr_enc; int colorspace; scalar_t__ flags; TYPE_3__* plane_fmt; int field; int member_0; } ;
struct v4l2_mbus_framefmt {int width; int height; int xfer_func; int quantization; int ycbcr_enc; int colorspace; int field; int code; int member_0; } ;
struct TYPE_15__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_4__ fmt; } ;
struct TYPE_17__ {int flags; } ;
struct imgu_video_device {int id; unsigned int pipe; char* name; scalar_t__ output; scalar_t__ enabled; struct vb2_queue vbq; int lock; TYPE_10__ vdev_fmt; TYPE_6__ vdev_pad; struct v4l2_mbus_framefmt pad_fmt; int buffers; struct video_device vdev; } ;
struct imgu_vb2_buffer {int dummy; } ;
struct TYPE_13__ {struct v4l2_subdev subdev; } ;
struct imgu_media_pipe {struct imgu_video_device* nodes; TYPE_2__ imgu_sd; } ;
struct imgu_device {int buf_struct_size; int v4l2_dev; struct imgu_media_pipe* imgu_pipe; TYPE_1__* pci_dev; } ;
struct device {int dummy; } ;
struct TYPE_14__ {int bytesperline; int sizeimage; } ;
struct TYPE_12__ {struct device dev; } ;


 char* IMGU_NAME ;
 int INIT_LIST_HEAD (int *) ;
 int MEDIA_BUS_FMT_FIXED ;
 int MEDIA_LNK_FL_ENABLED ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 int V4L2_COLORSPACE_RAW ;
 int V4L2_FIELD_NONE ;
 int V4L2_PIX_FMT_IPU3_SGRBG10 ;
 int V4L2_PIX_FMT_NV12 ;
 int V4L2_QUANTIZATION_DEFAULT ;
 int V4L2_XFER_FUNC_DEFAULT ;
 int V4L2_YCBCR_ENC_DEFAULT ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int VB2_USERPTR ;
 int VFL_DIR_RX ;
 int VFL_DIR_TX ;
 int VFL_TYPE_GRABBER ;
 int dev_err (struct device*,char*,int) ;
 int imgu_node_to_v4l2 (int,struct video_device*,TYPE_10__*) ;
 int imgu_v4l2_fops ;
 int imgu_vb2_ops ;
 int media_create_pad_link (TYPE_5__*,int,TYPE_5__*,int,int ) ;
 int media_entity_cleanup (TYPE_5__*) ;
 int media_entity_pads_init (TYPE_5__*,int,TYPE_6__*) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int snprintf (int ,int,char*,char*,unsigned int,char*) ;
 int vb2_dma_sg_memops ;
 int vb2_queue_init (struct vb2_queue*) ;
 int video_device_release_empty ;
 int video_register_device (struct video_device*,int ,int) ;
 int video_set_drvdata (struct video_device*,struct imgu_device*) ;
 int video_unregister_device (struct video_device*) ;

__attribute__((used)) static int imgu_v4l2_node_setup(struct imgu_device *imgu, unsigned int pipe,
    int node_num)
{
 int r;
 u32 flags;
 struct v4l2_mbus_framefmt def_bus_fmt = { 0 };
 struct v4l2_pix_format_mplane def_pix_fmt = { 0 };
 struct device *dev = &imgu->pci_dev->dev;
 struct imgu_media_pipe *imgu_pipe = &imgu->imgu_pipe[pipe];
 struct v4l2_subdev *sd = &imgu_pipe->imgu_sd.subdev;
 struct imgu_video_device *node = &imgu_pipe->nodes[node_num];
 struct video_device *vdev = &node->vdev;
 struct vb2_queue *vbq = &node->vbq;


 def_bus_fmt.width = 1920;
 def_bus_fmt.height = 1080;
 def_bus_fmt.code = MEDIA_BUS_FMT_FIXED;
 def_bus_fmt.field = V4L2_FIELD_NONE;
 def_bus_fmt.colorspace = V4L2_COLORSPACE_RAW;
 def_bus_fmt.ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
 def_bus_fmt.quantization = V4L2_QUANTIZATION_DEFAULT;
 def_bus_fmt.xfer_func = V4L2_XFER_FUNC_DEFAULT;

 def_pix_fmt.width = def_bus_fmt.width;
 def_pix_fmt.height = def_bus_fmt.height;
 def_pix_fmt.field = def_bus_fmt.field;
 def_pix_fmt.num_planes = 1;
 def_pix_fmt.plane_fmt[0].bytesperline = def_pix_fmt.width * 2;
 def_pix_fmt.plane_fmt[0].sizeimage =
  def_pix_fmt.height * def_pix_fmt.plane_fmt[0].bytesperline;
 def_pix_fmt.flags = 0;
 def_pix_fmt.colorspace = def_bus_fmt.colorspace;
 def_pix_fmt.ycbcr_enc = def_bus_fmt.ycbcr_enc;
 def_pix_fmt.quantization = def_bus_fmt.quantization;
 def_pix_fmt.xfer_func = def_bus_fmt.xfer_func;


 mutex_init(&node->lock);
 INIT_LIST_HEAD(&node->buffers);


 node->pad_fmt = def_bus_fmt;
 node->id = node_num;
 node->pipe = pipe;
 imgu_node_to_v4l2(node_num, vdev, &node->vdev_fmt);
 if (node->vdev_fmt.type ==
     V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ||
     node->vdev_fmt.type ==
     V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
  def_pix_fmt.pixelformat = node->output ?
   V4L2_PIX_FMT_IPU3_SGRBG10 :
   V4L2_PIX_FMT_NV12;
  node->vdev_fmt.fmt.pix_mp = def_pix_fmt;
 }


 r = media_entity_pads_init(&vdev->entity, 1, &node->vdev_pad);
 if (r) {
  dev_err(dev, "failed initialize media entity (%d)\n", r);
  mutex_destroy(&node->lock);
  return r;
 }
 node->vdev_pad.flags = node->output ?
  MEDIA_PAD_FL_SOURCE : MEDIA_PAD_FL_SINK;
 vdev->entity.ops = ((void*)0);


 vbq->type = node->vdev_fmt.type;
 vbq->io_modes = VB2_USERPTR | VB2_MMAP | VB2_DMABUF;
 vbq->ops = &imgu_vb2_ops;
 vbq->mem_ops = &vb2_dma_sg_memops;
 if (imgu->buf_struct_size <= 0)
  imgu->buf_struct_size =
   sizeof(struct imgu_vb2_buffer);
 vbq->buf_struct_size = imgu->buf_struct_size;
 vbq->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;

 vbq->min_buffers_needed = 0;
 vbq->drv_priv = imgu;
 vbq->lock = &node->lock;
 r = vb2_queue_init(vbq);
 if (r) {
  dev_err(dev, "failed to initialize video queue (%d)", r);
  media_entity_cleanup(&vdev->entity);
  return r;
 }


 snprintf(vdev->name, sizeof(vdev->name), "%s %u %s",
   IMGU_NAME, pipe, node->name);
 vdev->release = video_device_release_empty;
 vdev->fops = &imgu_v4l2_fops;
 vdev->lock = &node->lock;
 vdev->v4l2_dev = &imgu->v4l2_dev;
 vdev->queue = &node->vbq;
 vdev->vfl_dir = node->output ? VFL_DIR_TX : VFL_DIR_RX;
 video_set_drvdata(vdev, imgu);
 r = video_register_device(vdev, VFL_TYPE_GRABBER, -1);
 if (r) {
  dev_err(dev, "failed to register video device (%d)", r);
  media_entity_cleanup(&vdev->entity);
  return r;
 }


 flags = 0;
 if (node->enabled)
  flags |= MEDIA_LNK_FL_ENABLED;
 if (node->output) {
  r = media_create_pad_link(&vdev->entity, 0, &sd->entity,
       node_num, flags);
 } else {
  r = media_create_pad_link(&sd->entity, node_num, &vdev->entity,
       0, flags);
 }
 if (r) {
  dev_err(dev, "failed to create pad link (%d)", r);
  video_unregister_device(vdev);
  return r;
 }

 return 0;
}
