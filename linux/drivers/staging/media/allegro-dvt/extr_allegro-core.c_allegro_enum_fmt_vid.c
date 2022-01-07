
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int type; int pixelformat; scalar_t__ index; } ;
struct file {int dummy; } ;


 int EINVAL ;


 int V4L2_PIX_FMT_H264 ;
 int V4L2_PIX_FMT_NV12 ;

__attribute__((used)) static int allegro_enum_fmt_vid(struct file *file, void *fh,
    struct v4l2_fmtdesc *f)
{
 if (f->index)
  return -EINVAL;
 switch (f->type) {
 case 128:
  f->pixelformat = V4L2_PIX_FMT_NV12;
  break;
 case 129:
  f->pixelformat = V4L2_PIX_FMT_H264;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
