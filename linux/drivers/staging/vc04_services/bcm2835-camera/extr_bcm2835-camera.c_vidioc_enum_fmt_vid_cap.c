
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {size_t index; int pixelformat; } ;
struct mmal_fmt {int fourcc; } ;
struct file {int dummy; } ;


 size_t ARRAY_SIZE (struct mmal_fmt*) ;
 int EINVAL ;
 struct mmal_fmt* formats ;

__attribute__((used)) static int vidioc_enum_fmt_vid_cap(struct file *file, void *priv,
       struct v4l2_fmtdesc *f)
{
 struct mmal_fmt *fmt;

 if (f->index >= ARRAY_SIZE(formats))
  return -EINVAL;

 fmt = &formats[f->index];

 f->pixelformat = fmt->fourcc;

 return 0;
}
