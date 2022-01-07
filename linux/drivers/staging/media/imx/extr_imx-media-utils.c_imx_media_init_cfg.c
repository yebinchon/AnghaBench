
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_mbus_framefmt {int dummy; } ;
struct v4l2_subdev_format {unsigned int pad; struct v4l2_mbus_framefmt format; int which; } ;
struct TYPE_2__ {unsigned int num_pads; } ;
struct v4l2_subdev {TYPE_1__ entity; } ;
typedef int format ;


 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int get_fmt ;
 int memset (struct v4l2_subdev_format*,int ,int) ;
 int v4l2_subdev_call (struct v4l2_subdev*,unsigned int,int ,int *,struct v4l2_subdev_format*) ;
 struct v4l2_mbus_framefmt* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,unsigned int) ;

int imx_media_init_cfg(struct v4l2_subdev *sd,
         struct v4l2_subdev_pad_config *cfg)
{
 struct v4l2_mbus_framefmt *mf_try;
 struct v4l2_subdev_format format;
 unsigned int pad;
 int ret;

 for (pad = 0; pad < sd->entity.num_pads; pad++) {
  memset(&format, 0, sizeof(format));

  format.pad = pad;
  format.which = V4L2_SUBDEV_FORMAT_ACTIVE;
  ret = v4l2_subdev_call(sd, pad, get_fmt, ((void*)0), &format);
  if (ret)
   continue;

  mf_try = v4l2_subdev_get_try_format(sd, cfg, pad);
  *mf_try = format.format;
 }

 return 0;
}
