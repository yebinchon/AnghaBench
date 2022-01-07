
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_2__ {scalar_t__ field; } ;
struct v4l2_subdev_format {scalar_t__ pad; TYPE_1__ format; int which; } ;
struct v4l2_mbus_framefmt {int field; int height; } ;
struct csi_priv {int dummy; } ;


 scalar_t__ CSI_SINK_PAD ;

 scalar_t__ V4L2_FIELD_ANY ;
 int V4L2_FIELD_IS_SEQUENTIAL (scalar_t__) ;
 scalar_t__ V4L2_FIELD_NONE ;


 struct v4l2_mbus_framefmt* __csi_get_fmt (struct csi_priv*,struct v4l2_subdev_pad_config*,scalar_t__,int ) ;

__attribute__((used)) static void csi_try_field(struct csi_priv *priv,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *sdformat)
{
 struct v4l2_mbus_framefmt *infmt =
  __csi_get_fmt(priv, cfg, CSI_SINK_PAD, sdformat->which);





 if (sdformat->pad == CSI_SINK_PAD) {
  if (sdformat->format.field == V4L2_FIELD_ANY)
   sdformat->format.field = V4L2_FIELD_NONE;
  return;
 }

 switch (infmt->field) {
 case 128:
 case 129:





  if (!V4L2_FIELD_IS_SEQUENTIAL(sdformat->format.field))
   sdformat->format.field = infmt->field;
  break;
 case 130:
  if (!V4L2_FIELD_IS_SEQUENTIAL(sdformat->format.field))
   sdformat->format.field = (infmt->height == 480 / 2) ?
    129 : 128;
  break;
 default:

  sdformat->format.field = infmt->field;
  break;
 }
}
