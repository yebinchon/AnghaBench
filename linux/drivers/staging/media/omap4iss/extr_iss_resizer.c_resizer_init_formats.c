
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; int height; int code; } ;
struct v4l2_subdev_format {TYPE_1__ format; int which; int pad; } ;
struct v4l2_subdev_fh {int * pad; } ;
struct v4l2_subdev {int dummy; } ;
typedef int format ;


 int MEDIA_BUS_FMT_UYVY8_1X16 ;
 int RESIZER_PAD_SINK ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int V4L2_SUBDEV_FORMAT_TRY ;
 int memset (struct v4l2_subdev_format*,int ,int) ;
 int resizer_set_format (struct v4l2_subdev*,int *,struct v4l2_subdev_format*) ;

__attribute__((used)) static int resizer_init_formats(struct v4l2_subdev *sd,
    struct v4l2_subdev_fh *fh)
{
 struct v4l2_subdev_format format;

 memset(&format, 0, sizeof(format));
 format.pad = RESIZER_PAD_SINK;
 format.which = fh ? V4L2_SUBDEV_FORMAT_TRY : V4L2_SUBDEV_FORMAT_ACTIVE;
 format.format.code = MEDIA_BUS_FMT_UYVY8_1X16;
 format.format.width = 4096;
 format.format.height = 4096;
 resizer_set_format(sd, fh ? fh->pad : ((void*)0), &format);

 return 0;
}
