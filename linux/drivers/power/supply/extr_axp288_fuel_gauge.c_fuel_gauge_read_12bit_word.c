
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct axp288_fg_info {TYPE_1__* pdev; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int,int) ;
 int regmap_bulk_read (int ,int,unsigned char*,int) ;

__attribute__((used)) static int fuel_gauge_read_12bit_word(struct axp288_fg_info *info, int reg)
{
 unsigned char buf[2];
 int ret;

 ret = regmap_bulk_read(info->regmap, reg, buf, 2);
 if (ret < 0) {
  dev_err(&info->pdev->dev, "Error reading reg 0x%02x err: %d\n",
   reg, ret);
  return ret;
 }


 return (buf[0] << 4) | ((buf[1] >> 4) & 0x0f);
}
