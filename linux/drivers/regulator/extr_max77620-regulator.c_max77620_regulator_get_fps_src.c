
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77620_regulator_info {int fps_addr; } ;
struct max77620_regulator {int dev; int rmap; struct max77620_regulator_info** rinfo; } ;


 unsigned int MAX77620_FPS_SRC_MASK ;
 unsigned int MAX77620_FPS_SRC_SHIFT ;
 int dev_err (int ,char*,int ,int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int max77620_regulator_get_fps_src(struct max77620_regulator *pmic,
       int id)
{
 struct max77620_regulator_info *rinfo = pmic->rinfo[id];
 unsigned int val;
 int ret;

 ret = regmap_read(pmic->rmap, rinfo->fps_addr, &val);
 if (ret < 0) {
  dev_err(pmic->dev, "Reg 0x%02x read failed %d\n",
   rinfo->fps_addr, ret);
  return ret;
 }

 return (val & MAX77620_FPS_SRC_MASK) >> MAX77620_FPS_SRC_SHIFT;
}
