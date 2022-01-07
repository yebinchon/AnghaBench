
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int MODE_SELECT ;
 int reg_write (struct i2c_client*,int ,int) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int imx074_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);


 return reg_write(client, MODE_SELECT, !!enable);
}
