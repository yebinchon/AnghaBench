
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_format {scalar_t__ type; int fmt; } ;
struct TYPE_4__ {int fmt; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct imgu_video_device {TYPE_2__ vdev_fmt; TYPE_1__ vbq; } ;
struct file {int dummy; } ;


 int EINVAL ;
 struct imgu_video_device* file_to_intel_imgu_node (struct file*) ;

__attribute__((used)) static int imgu_vidioc_g_meta_fmt(struct file *file, void *fh,
      struct v4l2_format *f)
{
 struct imgu_video_device *node = file_to_intel_imgu_node(file);

 if (f->type != node->vbq.type)
  return -EINVAL;

 f->fmt = node->vdev_fmt.fmt;

 return 0;
}
