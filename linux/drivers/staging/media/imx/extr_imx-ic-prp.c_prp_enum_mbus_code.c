
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {int pad; int code; int which; int index; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int code; } ;
struct prp_priv {int lock; } ;


 int CS_SEL_ANY ;
 int EINVAL ;



 struct v4l2_mbus_framefmt* __prp_get_fmt (struct prp_priv*,struct v4l2_subdev_pad_config*,int const,int ) ;
 int imx_media_enum_ipu_format (int *,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct prp_priv* sd_to_priv (struct v4l2_subdev*) ;

__attribute__((used)) static int prp_enum_mbus_code(struct v4l2_subdev *sd,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_mbus_code_enum *code)
{
 struct prp_priv *priv = sd_to_priv(sd);
 struct v4l2_mbus_framefmt *infmt;
 int ret = 0;

 mutex_lock(&priv->lock);

 switch (code->pad) {
 case 130:
  ret = imx_media_enum_ipu_format(&code->code, code->index,
      CS_SEL_ANY);
  break;
 case 129:
 case 128:
  if (code->index != 0) {
   ret = -EINVAL;
   goto out;
  }
  infmt = __prp_get_fmt(priv, cfg, 130, code->which);
  code->code = infmt->code;
  break;
 default:
  ret = -EINVAL;
 }
out:
 mutex_unlock(&priv->lock);
 return ret;
}
