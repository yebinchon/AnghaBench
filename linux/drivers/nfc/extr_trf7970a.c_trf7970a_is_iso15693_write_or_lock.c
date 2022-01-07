
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static int trf7970a_is_iso15693_write_or_lock(u8 cmd)
{
 switch (cmd) {
 case 128:
 case 133:
 case 129:
 case 131:
 case 134:
 case 130:
 case 132:
  return 1;
  break;
 default:
  return 0;
 }
}
