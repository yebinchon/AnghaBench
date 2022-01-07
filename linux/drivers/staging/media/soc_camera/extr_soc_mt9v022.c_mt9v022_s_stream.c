
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct mt9v022 {int chip_control; int chip_version; } ;
struct i2c_client {int dummy; } ;


 int EIO ;
 int MT9V022_CHIP_CONTROL ;
 int MT9V022_REG32 ;
 scalar_t__ is_mt9v022_rev3 (int ) ;
 scalar_t__ is_mt9v024 (int ) ;
 scalar_t__ reg_clear (struct i2c_client*,int ,int) ;
 scalar_t__ reg_set (struct i2c_client*,int ,int) ;
 scalar_t__ reg_write (struct i2c_client*,int ,int) ;
 struct mt9v022* to_mt9v022 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v022_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9v022 *mt9v022 = to_mt9v022(client);

 if (enable) {

  mt9v022->chip_control &= ~0x10;
  if (is_mt9v022_rev3(mt9v022->chip_version) ||
      is_mt9v024(mt9v022->chip_version)) {




   if (reg_clear(client, MT9V022_REG32, 0x204))
    return -EIO;
  }
 } else {

  mt9v022->chip_control |= 0x10;
  if (is_mt9v022_rev3(mt9v022->chip_version) ||
      is_mt9v024(mt9v022->chip_version)) {





   if (reg_set(client, MT9V022_REG32, 0x204))
    return -EIO;
  }
 }

 if (reg_write(client, MT9V022_CHIP_CONTROL, mt9v022->chip_control) < 0)
  return -EIO;
 return 0;
}
