
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvidia_par {int Chipset; } ;
struct fb_info {struct nvidia_par* par; } ;


 int NV_ARCH_04 ;
 int NV_ARCH_10 ;
 int NV_ARCH_20 ;
 int NV_ARCH_30 ;
 int NV_ARCH_40 ;

__attribute__((used)) static u32 nvidia_get_arch(struct fb_info *info)
{
 struct nvidia_par *par = info->par;
 u32 arch = 0;

 switch (par->Chipset & 0x0ff0) {
 case 0x0100:
 case 0x0110:
 case 0x0150:
 case 0x0170:
 case 0x0180:
 case 0x01A0:
 case 0x01F0:
  arch = NV_ARCH_10;
  break;
 case 0x0200:
 case 0x0250:
 case 0x0280:
  arch = NV_ARCH_20;
  break;
 case 0x0300:
 case 0x0310:
 case 0x0320:
 case 0x0330:
 case 0x0340:
  arch = NV_ARCH_30;
  break;
 case 0x0040:
 case 0x00C0:
 case 0x0120:
 case 0x0140:
 case 0x0160:
 case 0x01D0:
 case 0x0090:
 case 0x0210:
 case 0x0220:
 case 0x0240:
 case 0x0290:
 case 0x0390:
 case 0x03D0:
  arch = NV_ARCH_40;
  break;
 case 0x0020:
  arch = NV_ARCH_04;
  break;
 default:
  break;
 }

 return arch;
}
