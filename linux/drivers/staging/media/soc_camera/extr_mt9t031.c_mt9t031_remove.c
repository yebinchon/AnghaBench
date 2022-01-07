
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9t031 {int hdl; int subdev; int clk; } ;
struct i2c_client {int dummy; } ;


 struct mt9t031* to_mt9t031 (struct i2c_client*) ;
 int v4l2_clk_put (int ) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_device_unregister_subdev (int *) ;

__attribute__((used)) static int mt9t031_remove(struct i2c_client *client)
{
 struct mt9t031 *mt9t031 = to_mt9t031(client);

 v4l2_clk_put(mt9t031->clk);
 v4l2_device_unregister_subdev(&mt9t031->subdev);
 v4l2_ctrl_handler_free(&mt9t031->hdl);

 return 0;
}
