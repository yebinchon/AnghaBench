
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ucs1002_info {int regmap; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int EINVAL ;
 int UCS1002_REG_ILIMIT ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,int) ;
 scalar_t__* ucs1002_current_limit_uA ;

__attribute__((used)) static int ucs1002_set_max_current(struct ucs1002_info *info, u32 val)
{
 unsigned int reg;
 int ret, idx;

 for (idx = 0; idx < ARRAY_SIZE(ucs1002_current_limit_uA); idx++) {
  if (val == ucs1002_current_limit_uA[idx])
   break;
 }

 if (idx == ARRAY_SIZE(ucs1002_current_limit_uA))
  return -EINVAL;

 ret = regmap_write(info->regmap, UCS1002_REG_ILIMIT, idx);
 if (ret)
  return ret;





 ret = regmap_read(info->regmap, UCS1002_REG_ILIMIT, &reg);
 if (ret)
  return ret;

 if (reg != idx)
  return -EINVAL;

 return 0;
}
