
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt9455_info {int * regmap_fields; TYPE_1__* client; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int EIO ;
 size_t F_RST ;
 int dev_err (struct device*,char*) ;
 int regmap_field_read (int ,unsigned int*) ;
 int regmap_field_write (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int rt9455_register_reset(struct rt9455_info *info)
{
 struct device *dev = &info->client->dev;
 unsigned int v;
 int ret, limit = 100;

 ret = regmap_field_write(info->regmap_fields[F_RST], 0x01);
 if (ret) {
  dev_err(dev, "Failed to set RST bit\n");
  return ret;
 }





 do {
  ret = regmap_field_read(info->regmap_fields[F_RST], &v);
  if (ret) {
   dev_err(dev, "Failed to read RST bit\n");
   return ret;
  }

  if (!v)
   break;

  usleep_range(10, 100);
 } while (--limit);

 if (!limit)
  return -EIO;

 return 0;
}
