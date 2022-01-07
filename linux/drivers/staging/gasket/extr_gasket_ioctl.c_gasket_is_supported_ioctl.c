
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
long gasket_is_supported_ioctl(uint cmd)
{
 switch (cmd) {
 case 131:
 case 130:
 case 138:
 case 132:
 case 134:
 case 133:
 case 129:
 case 135:
 case 128:
 case 137:
 case 136:
  return 1;
 default:
  return 0;
 }
}
