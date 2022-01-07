
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77620_regulator_info {int fps_addr; } ;
struct max77620_regulator {int* active_fps_src; int dev; int rmap; struct max77620_regulator_info** rinfo; } ;


 int EINVAL ;




 unsigned int MAX77620_FPS_SRC_MASK ;

 unsigned int MAX77620_FPS_SRC_SHIFT ;
 int dev_err (int ,char*,int,int) ;
 int regmap_read (int ,int,unsigned int*) ;
 int regmap_update_bits (int ,int,unsigned int,int) ;

__attribute__((used)) static int max77620_regulator_set_fps_src(struct max77620_regulator *pmic,
       int fps_src, int id)
{
 struct max77620_regulator_info *rinfo = pmic->rinfo[id];
 unsigned int val;
 int ret;

 if (!rinfo)
  return 0;

 switch (fps_src) {
 case 132:
 case 131:
 case 130:
 case 128:
  break;

 case 129:
  ret = regmap_read(pmic->rmap, rinfo->fps_addr, &val);
  if (ret < 0) {
   dev_err(pmic->dev, "Reg 0x%02x read failed %d\n",
    rinfo->fps_addr, ret);
   return ret;
  }
  ret = (val & MAX77620_FPS_SRC_MASK) >> MAX77620_FPS_SRC_SHIFT;
  pmic->active_fps_src[id] = ret;
  return 0;

 default:
  dev_err(pmic->dev, "Invalid FPS %d for regulator %d\n",
   fps_src, id);
  return -EINVAL;
 }

 ret = regmap_update_bits(pmic->rmap, rinfo->fps_addr,
     MAX77620_FPS_SRC_MASK,
     fps_src << MAX77620_FPS_SRC_SHIFT);
 if (ret < 0) {
  dev_err(pmic->dev, "Reg 0x%02x update failed %d\n",
   rinfo->fps_addr, ret);
  return ret;
 }
 pmic->active_fps_src[id] = fps_src;

 return 0;
}
