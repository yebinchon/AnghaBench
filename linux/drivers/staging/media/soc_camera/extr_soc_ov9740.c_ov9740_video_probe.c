
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct ov9740_priv {int model; int revision; int manid; int smiaver; int subdev; int hdl; } ;
struct i2c_client {int dev; } ;


 int ENODEV ;
 int OV9740_MANUFACTURER_ID ;
 int OV9740_MODEL_ID_HI ;
 int OV9740_MODEL_ID_LO ;
 int OV9740_REVISION_NUMBER ;
 int OV9740_SMIA_VERSION ;
 int dev_info (int *,char*,int,int,int,int) ;
 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int ov9740_reg_read (struct i2c_client*,int ,int*) ;
 int ov9740_s_power (int *,int) ;
 struct ov9740_priv* to_ov9740 (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_setup (int *) ;

__attribute__((used)) static int ov9740_video_probe(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct ov9740_priv *priv = to_ov9740(sd);
 u8 modelhi, modello;
 int ret;

 ret = ov9740_s_power(&priv->subdev, 1);
 if (ret < 0)
  return ret;




 ret = ov9740_reg_read(client, OV9740_MODEL_ID_HI, &modelhi);
 if (ret < 0)
  goto done;

 ret = ov9740_reg_read(client, OV9740_MODEL_ID_LO, &modello);
 if (ret < 0)
  goto done;

 priv->model = (modelhi << 8) | modello;

 ret = ov9740_reg_read(client, OV9740_REVISION_NUMBER, &priv->revision);
 if (ret < 0)
  goto done;

 ret = ov9740_reg_read(client, OV9740_MANUFACTURER_ID, &priv->manid);
 if (ret < 0)
  goto done;

 ret = ov9740_reg_read(client, OV9740_SMIA_VERSION, &priv->smiaver);
 if (ret < 0)
  goto done;

 if (priv->model != 0x9740) {
  ret = -ENODEV;
  goto done;
 }

 dev_info(&client->dev, "ov9740 Model ID 0x%04x, Revision 0x%02x, Manufacturer 0x%02x, SMIA Version 0x%02x\n",
   priv->model, priv->revision, priv->manid, priv->smiaver);

 ret = v4l2_ctrl_handler_setup(&priv->hdl);

done:
 ov9740_s_power(&priv->subdev, 0);
 return ret;
}
