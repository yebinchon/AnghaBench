
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct axp288_fg_info {TYPE_1__* pdev; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int ENXIO ;
 int FG_15BIT_VAL_MASK ;
 int FG_15BIT_WORD_VALID ;
 int dev_err (int *,char*,int,...) ;
 int get_unaligned_be16 (unsigned char*) ;
 int regmap_bulk_read (int ,int,unsigned char*,int) ;

__attribute__((used)) static int fuel_gauge_read_15bit_word(struct axp288_fg_info *info, int reg)
{
 unsigned char buf[2];
 int ret;

 ret = regmap_bulk_read(info->regmap, reg, buf, 2);
 if (ret < 0) {
  dev_err(&info->pdev->dev, "Error reading reg 0x%02x err: %d\n",
   reg, ret);
  return ret;
 }

 ret = get_unaligned_be16(buf);
 if (!(ret & FG_15BIT_WORD_VALID)) {
  dev_err(&info->pdev->dev, "Error reg 0x%02x contents not valid\n",
   reg);
  return -ENXIO;
 }

 return ret & FG_15BIT_VAL_MASK;
}
