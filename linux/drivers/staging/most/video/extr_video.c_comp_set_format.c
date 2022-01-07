
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct most_video_dev {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_PIX_FMT_MPEG ;
 unsigned int VIDIOC_TRY_FMT ;
 int comp_set_format_struct (struct v4l2_format*) ;

__attribute__((used)) static int comp_set_format(struct most_video_dev *mdev, unsigned int cmd,
      struct v4l2_format *format)
{
 if (format->fmt.pix.pixelformat != V4L2_PIX_FMT_MPEG)
  return -EINVAL;

 if (cmd == VIDIOC_TRY_FMT)
  return 0;

 comp_set_format_struct(format);

 return 0;
}
