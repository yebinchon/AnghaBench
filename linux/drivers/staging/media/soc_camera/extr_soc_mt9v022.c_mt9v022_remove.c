
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_camera_subdev_desc {int (* free_bus ) (struct soc_camera_subdev_desc*) ;} ;
struct mt9v022 {int hdl; int subdev; int clk; } ;
struct i2c_client {int dummy; } ;


 struct soc_camera_subdev_desc* soc_camera_i2c_to_desc (struct i2c_client*) ;
 int stub1 (struct soc_camera_subdev_desc*) ;
 struct mt9v022* to_mt9v022 (struct i2c_client*) ;
 int v4l2_clk_put (int ) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister_subdev (int *) ;

__attribute__((used)) static int mt9v022_remove(struct i2c_client *client)
{
 struct mt9v022 *mt9v022 = to_mt9v022(client);
 struct soc_camera_subdev_desc *ssdd = soc_camera_i2c_to_desc(client);

 v4l2_clk_put(mt9v022->clk);
 v4l2_device_unregister_subdev(&mt9v022->subdev);
 if (ssdd->free_bus)
  ssdd->free_bus(ssdd);
 v4l2_ctrl_handler_free(&mt9v022->hdl);

 return 0;
}
