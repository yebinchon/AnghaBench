
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int pixelformat; int flags; int type; int description; scalar_t__ index; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FMT_FLAG_COMPRESSED ;
 int V4L2_PIX_FMT_MPEG ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int vidioc_enum_fmt_vid_cap(struct file *file, void *priv,
       struct v4l2_fmtdesc *f)
{
 if (f->index)
  return -EINVAL;

 strcpy(f->description, "MPEG");
 f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 f->flags = V4L2_FMT_FLAG_COMPRESSED;
 f->pixelformat = V4L2_PIX_FMT_MPEG;

 return 0;
}
