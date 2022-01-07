
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iTCO_wdt_private {int iTCO_version; } ;



__attribute__((used)) static inline u32 no_reboot_bit(struct iTCO_wdt_private *p)
{
 u32 enable_bit;

 switch (p->iTCO_version) {
 case 5:
 case 3:
  enable_bit = 0x00000010;
  break;
 case 2:
  enable_bit = 0x00000020;
  break;
 case 4:
 case 1:
 default:
  enable_bit = 0x00000002;
  break;
 }

 return enable_bit;
}
