
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_format {int fmt; } ;
struct TYPE_2__ {int fmt; } ;
struct imgu_video_device {TYPE_1__ vdev_fmt; } ;
struct file {int dummy; } ;


 struct imgu_video_device* file_to_intel_imgu_node (struct file*) ;

__attribute__((used)) static int imgu_vidioc_g_fmt(struct file *file, void *fh,
        struct v4l2_format *f)
{
 struct imgu_video_device *node = file_to_intel_imgu_node(file);

 f->fmt = node->vdev_fmt.fmt;

 return 0;
}
