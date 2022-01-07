
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {scalar_t__ type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int VID_CAPTURE ;
 int enum_fmts (struct v4l2_fmtdesc*,int ) ;

__attribute__((used)) static int vidioc_enum_fmt_vid_cap(struct file *file, void *priv,
       struct v4l2_fmtdesc *f)
{
 if (f->type != V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
  return -EINVAL;

 return enum_fmts(f, VID_CAPTURE);
}
