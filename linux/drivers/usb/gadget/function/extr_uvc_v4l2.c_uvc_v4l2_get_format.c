
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct TYPE_3__ {int width; int bytesperline; scalar_t__ priv; int colorspace; int sizeimage; int field; int height; int pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct uvc_video {int width; int bpp; int imagesize; int height; int fcc; } ;
struct uvc_device {struct uvc_video video; } ;
struct file {int dummy; } ;


 int V4L2_COLORSPACE_SRGB ;
 int V4L2_FIELD_NONE ;
 struct video_device* video_devdata (struct file*) ;
 struct uvc_device* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static int
uvc_v4l2_get_format(struct file *file, void *fh, struct v4l2_format *fmt)
{
 struct video_device *vdev = video_devdata(file);
 struct uvc_device *uvc = video_get_drvdata(vdev);
 struct uvc_video *video = &uvc->video;

 fmt->fmt.pix.pixelformat = video->fcc;
 fmt->fmt.pix.width = video->width;
 fmt->fmt.pix.height = video->height;
 fmt->fmt.pix.field = V4L2_FIELD_NONE;
 fmt->fmt.pix.bytesperline = video->bpp * video->width / 8;
 fmt->fmt.pix.sizeimage = video->imagesize;
 fmt->fmt.pix.colorspace = V4L2_COLORSPACE_SRGB;
 fmt->fmt.pix.priv = 0;

 return 0;
}
