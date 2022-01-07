
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int dummy; } ;
struct file {int dummy; } ;


 int vidioc_enum_fmt (struct file*,void*,struct v4l2_fmtdesc*,int) ;

__attribute__((used)) static int vidioc_enum_fmt_vid_out(struct file *file, void *priv,
       struct v4l2_fmtdesc *f)
{
 return vidioc_enum_fmt(file, priv, f, 0);
}
