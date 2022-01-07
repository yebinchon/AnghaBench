
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
 int smb347_volatile_reg (struct device*,unsigned int) ;

__attribute__((used)) static bool smb347_readable_reg(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 142:
 case 141:
 case 139:
 case 135:
 case 136:
 case 131:
 case 133:
 case 137:
 case 138:
 case 132:
 case 140:
 case 134:
 case 143:
 case 130:
 case 129:
 case 128:
  return 1;
 }

 return smb347_volatile_reg(dev, reg);
}
