
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct ad5398_chip_info {struct i2c_client* client; } ;


 unsigned short AD5398_CURRENT_EN_MASK ;
 int ad5398_read_reg (struct i2c_client*,unsigned short*) ;
 struct ad5398_chip_info* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int ad5398_is_enabled(struct regulator_dev *rdev)
{
 struct ad5398_chip_info *chip = rdev_get_drvdata(rdev);
 struct i2c_client *client = chip->client;
 unsigned short data;
 int ret;

 ret = ad5398_read_reg(client, &data);
 if (ret < 0)
  return ret;

 if (data & AD5398_CURRENT_EN_MASK)
  return 1;
 else
  return 0;
}
