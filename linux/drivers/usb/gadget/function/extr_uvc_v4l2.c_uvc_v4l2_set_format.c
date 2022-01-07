
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct TYPE_3__ {int width; unsigned int height; unsigned int sizeimage; unsigned int bytesperline; scalar_t__ priv; int colorspace; int field; scalar_t__ pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct uvc_video {int bpp; int width; unsigned int height; unsigned int imagesize; scalar_t__ fcc; } ;
struct uvc_format {int bpp; scalar_t__ fcc; } ;
struct uvc_device {int func; struct uvc_video video; } ;
struct file {int dummy; } ;


 unsigned int ARRAY_SIZE (struct uvc_format*) ;
 int EINVAL ;
 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 struct uvc_format* uvc_formats ;
 int uvcg_info (int *,char*,scalar_t__) ;
 struct video_device* video_devdata (struct file*) ;
 struct uvc_device* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static int
uvc_v4l2_set_format(struct file *file, void *fh, struct v4l2_format *fmt)
{
 struct video_device *vdev = video_devdata(file);
 struct uvc_device *uvc = video_get_drvdata(vdev);
 struct uvc_video *video = &uvc->video;
 struct uvc_format *format;
 unsigned int imagesize;
 unsigned int bpl;
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(uvc_formats); ++i) {
  format = &uvc_formats[i];
  if (format->fcc == fmt->fmt.pix.pixelformat)
   break;
 }

 if (i == ARRAY_SIZE(uvc_formats)) {
  uvcg_info(&uvc->func, "Unsupported format 0x%08x.\n",
     fmt->fmt.pix.pixelformat);
  return -EINVAL;
 }

 bpl = format->bpp * fmt->fmt.pix.width / 8;
 imagesize = bpl ? bpl * fmt->fmt.pix.height : fmt->fmt.pix.sizeimage;

 video->fcc = format->fcc;
 video->bpp = format->bpp;
 video->width = fmt->fmt.pix.width;
 video->height = fmt->fmt.pix.height;
 video->imagesize = imagesize;

 fmt->fmt.pix.field = V4L2_FIELD_NONE;
 fmt->fmt.pix.bytesperline = bpl;
 fmt->fmt.pix.sizeimage = imagesize;
 fmt->fmt.pix.colorspace = V4L2_COLORSPACE_SRGB;
 fmt->fmt.pix.priv = 0;

 return 0;
}
