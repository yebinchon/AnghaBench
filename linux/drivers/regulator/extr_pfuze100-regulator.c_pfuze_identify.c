
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfuze_chip {unsigned int chip_id; int dev; int regmap; } ;


 int ENODEV ;
 unsigned int PFUZE100 ;
 int PFUZE100_DEVICEID ;
 int PFUZE100_FABID ;
 int PFUZE100_REVID ;
 int dev_info (int ,char*,...) ;
 int dev_warn (int ,char*,unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int pfuze_identify(struct pfuze_chip *pfuze_chip)
{
 unsigned int value;
 int ret;

 ret = regmap_read(pfuze_chip->regmap, PFUZE100_DEVICEID, &value);
 if (ret)
  return ret;

 if (((value & 0x0f) == 0x8) && (pfuze_chip->chip_id == PFUZE100)) {




  dev_info(pfuze_chip->dev, "Assuming misprogrammed ID=0x8");
 } else if ((value & 0x0f) != pfuze_chip->chip_id &&
     (value & 0xf0) >> 4 != pfuze_chip->chip_id &&
     (value != pfuze_chip->chip_id)) {

  dev_warn(pfuze_chip->dev, "Illegal ID: %x\n", value);
  return -ENODEV;
 }

 ret = regmap_read(pfuze_chip->regmap, PFUZE100_REVID, &value);
 if (ret)
  return ret;
 dev_info(pfuze_chip->dev,
   "Full layer: %x, Metal layer: %x\n",
   (value & 0xf0) >> 4, value & 0x0f);

 ret = regmap_read(pfuze_chip->regmap, PFUZE100_FABID, &value);
 if (ret)
  return ret;
 dev_info(pfuze_chip->dev, "FAB: %x, FIN: %x\n",
   (value & 0xc) >> 2, value & 0x3);

 return 0;
}
