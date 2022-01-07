
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct max17211_device_info {int regmap; } ;


 int EFAULT ;
 scalar_t__ MAX1721X_REG_DEV_STR ;
 scalar_t__ MAX1721X_REG_MFG_STR ;
 scalar_t__ regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int get_string(struct max17211_device_info *info,
   uint16_t reg, uint8_t nr, char *str)
{
 unsigned int val;

 if (!str || !(reg == MAX1721X_REG_MFG_STR ||
   reg == MAX1721X_REG_DEV_STR))
  return -EFAULT;

 while (nr--) {
  if (regmap_read(info->regmap, reg++, &val))
   return -EFAULT;
  *str++ = val>>8 & 0x00FF;
  *str++ = val & 0x00FF;
 }
 return 0;
}
