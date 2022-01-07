
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int device; } ;


 int NV_ARCH_03 ;
 int NV_ARCH_04 ;
 int NV_ARCH_10 ;
 int NV_ARCH_20 ;
 int NV_ARCH_30 ;

__attribute__((used)) static u32 riva_get_arch(struct pci_dev *pd)
{
     u32 arch = 0;

 switch (pd->device & 0x0ff0) {
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
  case 0x0020:
       arch = NV_ARCH_04;
       break;
  case 0x0010:
       arch = NV_ARCH_03;
       break;
  default:
       break;
 }
 return arch;
}
