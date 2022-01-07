
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int height; int width; } ;
struct ov9740_priv {struct v4l2_mbus_framefmt current_mf; } ;
struct i2c_client {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ov9740_defaults ;
 int ov9740_reg_write_array (struct i2c_client*,int ,int ) ;
 int ov9740_set_res (struct i2c_client*,int ,int ) ;
 struct ov9740_priv* to_ov9740 (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ov9740_s_fmt(struct v4l2_subdev *sd,
   struct v4l2_mbus_framefmt *mf)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ov9740_priv *priv = to_ov9740(sd);
 int ret;

 ret = ov9740_reg_write_array(client, ov9740_defaults,
         ARRAY_SIZE(ov9740_defaults));
 if (ret < 0)
  return ret;

 ret = ov9740_set_res(client, mf->width, mf->height);
 if (ret < 0)
  return ret;

 priv->current_mf = *mf;
 return ret;
}
