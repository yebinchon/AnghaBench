
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
__attribute__((used)) static inline int pistachio_reset_shift(unsigned long id)
{
 switch (id) {
 case 149:
 case 148:
 case 147:
 case 146:
 case 145:
 case 141:
 case 136:
 case 135:
 case 140:
 case 133:
 case 132:
 case 139:
 case 142:
 case 138:
 case 152:
 case 143:
 case 150:
 case 134:
  return id;
 case 144:
 case 137:
 case 151:
  return id + 6;
 case 131:
 case 128:
 case 129:
 case 130:
  return id + 7;
 default:
  return -EINVAL;
 }
}
