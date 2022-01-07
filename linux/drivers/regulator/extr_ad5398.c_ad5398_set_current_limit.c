
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct i2c_client {int dev; } ;
struct ad5398_chip_info {unsigned int max_uA; unsigned int min_uA; int current_level; unsigned int current_offset; unsigned int current_mask; struct i2c_client* client; } ;


 unsigned short AD5398_CURRENT_EN_MASK ;
 unsigned int DIV_ROUND_UP (int,unsigned int) ;
 int EINVAL ;
 int ad5398_calc_current (struct ad5398_chip_info*,unsigned int) ;
 int ad5398_read_reg (struct i2c_client*,unsigned short*) ;
 int ad5398_write_reg (struct i2c_client*,unsigned short) ;
 int dev_dbg (int *,char*,int) ;
 struct ad5398_chip_info* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int ad5398_set_current_limit(struct regulator_dev *rdev, int min_uA, int max_uA)
{
 struct ad5398_chip_info *chip = rdev_get_drvdata(rdev);
 struct i2c_client *client = chip->client;
 unsigned range_uA = chip->max_uA - chip->min_uA;
 unsigned selector;
 unsigned short data;
 int ret;

 if (min_uA < chip->min_uA)
  min_uA = chip->min_uA;
 if (max_uA > chip->max_uA)
  max_uA = chip->max_uA;

 if (min_uA > chip->max_uA || max_uA < chip->min_uA)
  return -EINVAL;

 selector = DIV_ROUND_UP((min_uA - chip->min_uA) * chip->current_level,
    range_uA);
 if (ad5398_calc_current(chip, selector) > max_uA)
  return -EINVAL;

 dev_dbg(&client->dev, "changing current %duA\n",
  ad5398_calc_current(chip, selector));


 ret = ad5398_read_reg(client, &data);
 if (ret < 0)
  return ret;


 selector = (selector << chip->current_offset) & chip->current_mask;
 data = (unsigned short)selector | (data & AD5398_CURRENT_EN_MASK);


 ret = ad5398_write_reg(client, data);

 return ret;
}
