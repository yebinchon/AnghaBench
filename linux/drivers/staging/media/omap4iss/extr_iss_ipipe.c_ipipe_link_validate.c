
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ width; scalar_t__ height; scalar_t__ code; } ;
struct v4l2_subdev_format {TYPE_1__ format; } ;
struct v4l2_subdev {int dummy; } ;
struct media_link {int dummy; } ;


 int EPIPE ;

__attribute__((used)) static int ipipe_link_validate(struct v4l2_subdev *sd, struct media_link *link,
          struct v4l2_subdev_format *source_fmt,
          struct v4l2_subdev_format *sink_fmt)
{

 if (source_fmt->format.width != sink_fmt->format.width ||
     source_fmt->format.height != sink_fmt->format.height)
  return -EPIPE;

 if (source_fmt->format.code != sink_fmt->format.code)
  return -EPIPE;

 return 0;
}
