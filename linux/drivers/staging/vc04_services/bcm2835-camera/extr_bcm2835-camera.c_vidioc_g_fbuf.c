
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int width; int height; } ;
struct TYPE_7__ {TYPE_2__ video; } ;
struct vchiq_mmal_port {TYPE_3__ es; } ;
struct TYPE_8__ {int width; int height; int bytesperline; int sizeimage; int colorspace; int pixelformat; } ;
struct v4l2_framebuffer {int capability; TYPE_4__ fmt; int flags; } ;
struct file {int dummy; } ;
struct bm2835_mmal_dev {TYPE_1__** component; } ;
struct TYPE_5__ {struct vchiq_mmal_port* output; } ;


 size_t CAM_PORT_PREVIEW ;
 size_t COMP_CAMERA ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FBUF_CAP_EXTERNOVERLAY ;
 int V4L2_FBUF_CAP_GLOBAL_ALPHA ;
 int V4L2_FBUF_FLAG_OVERLAY ;
 int V4L2_PIX_FMT_YUV420 ;
 struct bm2835_mmal_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_fbuf(struct file *file, void *fh,
    struct v4l2_framebuffer *a)
{



 struct bm2835_mmal_dev *dev = video_drvdata(file);
 struct vchiq_mmal_port *preview_port =
  &dev->component[COMP_CAMERA]->output[CAM_PORT_PREVIEW];

 a->capability = V4L2_FBUF_CAP_EXTERNOVERLAY |
   V4L2_FBUF_CAP_GLOBAL_ALPHA;
 a->flags = V4L2_FBUF_FLAG_OVERLAY;
 a->fmt.width = preview_port->es.video.width;
 a->fmt.height = preview_port->es.video.height;
 a->fmt.pixelformat = V4L2_PIX_FMT_YUV420;
 a->fmt.bytesperline = preview_port->es.video.width;
 a->fmt.sizeimage = (preview_port->es.video.width *
          preview_port->es.video.height * 3) >> 1;
 a->fmt.colorspace = V4L2_COLORSPACE_SMPTE170M;

 return 0;
}
