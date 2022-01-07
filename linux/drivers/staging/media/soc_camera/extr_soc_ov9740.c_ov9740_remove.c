
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov9740_priv {int hdl; int subdev; int clk; } ;
struct i2c_client {int dummy; } ;


 struct ov9740_priv* i2c_get_clientdata (struct i2c_client*) ;
 int v4l2_clk_put (int ) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister_subdev (int *) ;

__attribute__((used)) static int ov9740_remove(struct i2c_client *client)
{
 struct ov9740_priv *priv = i2c_get_clientdata(client);

 v4l2_clk_put(priv->clk);
 v4l2_device_unregister_subdev(&priv->subdev);
 v4l2_ctrl_handler_free(&priv->hdl);
 return 0;
}
