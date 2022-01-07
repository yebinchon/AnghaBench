
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_camera_subdev_desc {int (* free_bus ) (struct soc_camera_subdev_desc*) ;} ;
struct imx074 {int clk; int subdev; } ;
struct i2c_client {int dummy; } ;


 struct soc_camera_subdev_desc* soc_camera_i2c_to_desc (struct i2c_client*) ;
 int stub1 (struct soc_camera_subdev_desc*) ;
 struct imx074* to_imx074 (struct i2c_client*) ;
 int v4l2_async_unregister_subdev (int *) ;
 int v4l2_clk_put (int ) ;

__attribute__((used)) static int imx074_remove(struct i2c_client *client)
{
 struct soc_camera_subdev_desc *ssdd = soc_camera_i2c_to_desc(client);
 struct imx074 *priv = to_imx074(client);

 v4l2_async_unregister_subdev(&priv->subdev);
 v4l2_clk_put(priv->clk);

 if (ssdd->free_bus)
  ssdd->free_bus(ssdd);

 return 0;
}
