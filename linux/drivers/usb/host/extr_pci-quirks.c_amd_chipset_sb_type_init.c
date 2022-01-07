
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int rev; int gen; } ;
struct amd_chipset_info {TYPE_2__ sb_type; TYPE_1__* smbus_dev; } ;
struct TYPE_3__ {int revision; } ;


 int AMD_CHIPSET_BOLTON ;
 int AMD_CHIPSET_HUDSON2 ;
 int AMD_CHIPSET_SB600 ;
 int AMD_CHIPSET_SB700 ;
 int AMD_CHIPSET_SB800 ;
 int AMD_CHIPSET_TAISHAN ;
 int AMD_CHIPSET_UNKNOWN ;
 int AMD_CHIPSET_YANGTZE ;
 int NOT_AMD_CHIPSET ;
 int PCI_DEVICE_ID_AMD_HUDSON2_SMBUS ;
 int PCI_DEVICE_ID_ATI_SBX00_SMBUS ;
 int PCI_VENDOR_ID_AMD ;
 int PCI_VENDOR_ID_ATI ;
 void* pci_get_device (int ,int,int *) ;

__attribute__((used)) static int amd_chipset_sb_type_init(struct amd_chipset_info *pinfo)
{
 u8 rev = 0;
 pinfo->sb_type.gen = AMD_CHIPSET_UNKNOWN;

 pinfo->smbus_dev = pci_get_device(PCI_VENDOR_ID_ATI,
   PCI_DEVICE_ID_ATI_SBX00_SMBUS, ((void*)0));
 if (pinfo->smbus_dev) {
  rev = pinfo->smbus_dev->revision;
  if (rev >= 0x10 && rev <= 0x1f)
   pinfo->sb_type.gen = AMD_CHIPSET_SB600;
  else if (rev >= 0x30 && rev <= 0x3f)
   pinfo->sb_type.gen = AMD_CHIPSET_SB700;
  else if (rev >= 0x40 && rev <= 0x4f)
   pinfo->sb_type.gen = AMD_CHIPSET_SB800;
 } else {
  pinfo->smbus_dev = pci_get_device(PCI_VENDOR_ID_AMD,
    PCI_DEVICE_ID_AMD_HUDSON2_SMBUS, ((void*)0));

  if (pinfo->smbus_dev) {
   rev = pinfo->smbus_dev->revision;
   if (rev >= 0x11 && rev <= 0x14)
    pinfo->sb_type.gen = AMD_CHIPSET_HUDSON2;
   else if (rev >= 0x15 && rev <= 0x18)
    pinfo->sb_type.gen = AMD_CHIPSET_BOLTON;
   else if (rev >= 0x39 && rev <= 0x3a)
    pinfo->sb_type.gen = AMD_CHIPSET_YANGTZE;
  } else {
   pinfo->smbus_dev = pci_get_device(PCI_VENDOR_ID_AMD,
         0x145c, ((void*)0));
   if (pinfo->smbus_dev) {
    rev = pinfo->smbus_dev->revision;
    pinfo->sb_type.gen = AMD_CHIPSET_TAISHAN;
   } else {
    pinfo->sb_type.gen = NOT_AMD_CHIPSET;
    return 0;
   }
  }
 }
 pinfo->sb_type.rev = rev;
 return 1;
}
