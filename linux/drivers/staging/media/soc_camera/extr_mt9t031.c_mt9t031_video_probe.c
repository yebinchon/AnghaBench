
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9t031 {int subdev; int hdl; } ;
struct i2c_client {int dev; } ;
typedef int s32 ;


 int ENODEV ;
 int MT9T031_CHIP_VERSION ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int) ;
 int mt9t031_idle (struct i2c_client*) ;
 int mt9t031_s_power (int *,int) ;
 int reg_read (struct i2c_client*,int ) ;
 struct mt9t031* to_mt9t031 (struct i2c_client*) ;
 int v4l2_ctrl_handler_setup (int *) ;

__attribute__((used)) static int mt9t031_video_probe(struct i2c_client *client)
{
 struct mt9t031 *mt9t031 = to_mt9t031(client);
 s32 data;
 int ret;

 ret = mt9t031_s_power(&mt9t031->subdev, 1);
 if (ret < 0)
  return ret;

 ret = mt9t031_idle(client);
 if (ret < 0) {
  dev_err(&client->dev, "Failed to initialise the camera\n");
  goto done;
 }


 data = reg_read(client, MT9T031_CHIP_VERSION);

 switch (data) {
 case 0x1621:
  break;
 default:
  dev_err(&client->dev,
   "No MT9T031 chip detected, register read %x\n", data);
  ret = -ENODEV;
  goto done;
 }

 dev_info(&client->dev, "Detected a MT9T031 chip ID %x\n", data);

 ret = v4l2_ctrl_handler_setup(&mt9t031->hdl);

done:
 mt9t031_s_power(&mt9t031->subdev, 0);

 return ret;
}
