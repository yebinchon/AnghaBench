
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {int pad; int code; int index; int which; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int code; } ;
struct imx7_csi {int lock; } ;


 int CS_SEL_ANY ;
 int EINVAL ;


 struct v4l2_mbus_framefmt* imx7_csi_get_format (struct imx7_csi*,struct v4l2_subdev_pad_config*,int,int ) ;
 int imx_media_enum_mbus_format (int *,int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct imx7_csi* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int imx7_csi_enum_mbus_code(struct v4l2_subdev *sd,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_mbus_code_enum *code)
{
 struct imx7_csi *csi = v4l2_get_subdevdata(sd);
 struct v4l2_mbus_framefmt *in_fmt;
 int ret = 0;

 mutex_lock(&csi->lock);

 in_fmt = imx7_csi_get_format(csi, cfg, 129, code->which);

 switch (code->pad) {
 case 129:
  ret = imx_media_enum_mbus_format(&code->code, code->index,
       CS_SEL_ANY, 1);
  break;
 case 128:
  if (code->index != 0) {
   ret = -EINVAL;
   goto out_unlock;
  }

  code->code = in_fmt->code;
  break;
 default:
  ret = -EINVAL;
 }

out_unlock:
 mutex_unlock(&csi->lock);

 return ret;
}
