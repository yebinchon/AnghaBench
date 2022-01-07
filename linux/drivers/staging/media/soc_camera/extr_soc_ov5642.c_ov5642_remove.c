
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_camera_subdev_desc {int (* free_bus ) (struct soc_camera_subdev_desc*) ;} ;
struct ov5642 {int clk; } ;
struct i2c_client {int dummy; } ;


 struct soc_camera_subdev_desc* soc_camera_i2c_to_desc (struct i2c_client*) ;
 int stub1 (struct soc_camera_subdev_desc*) ;
 struct ov5642* to_ov5642 (struct i2c_client*) ;
 int v4l2_clk_put (int ) ;

__attribute__((used)) static int ov5642_remove(struct i2c_client *client)
{
 struct soc_camera_subdev_desc *ssdd = soc_camera_i2c_to_desc(client);
 struct ov5642 *priv = to_ov5642(client);

 v4l2_clk_put(priv->clk);
 if (ssdd->free_bus)
  ssdd->free_bus(ssdd);

 return 0;
}
