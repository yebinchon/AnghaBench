
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sstfb_par {int vgapass; struct pci_dev* dev; } ;
struct pci_dev {int dummy; } ;
struct fb_info {struct sstfb_par* par; } ;


 int DIS_VGA_PASSTHROUGH ;
 int FBIINIT0 ;
 int PCI_EN_INIT_WR ;
 int PCI_INIT_ENABLE ;
 int fb_info (struct fb_info*,char*) ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 int sst_read (int ) ;
 int sst_write (int ,int) ;

__attribute__((used)) static void sstfb_setvgapass( struct fb_info *info, int enable )
{
 struct sstfb_par *par = info->par;
 struct pci_dev *sst_dev = par->dev;
 u32 fbiinit0, tmp;

 enable = enable ? 1:0;
 if (par->vgapass == enable)
  return;
 par->vgapass = enable;

 pci_read_config_dword(sst_dev, PCI_INIT_ENABLE, &tmp);
 pci_write_config_dword(sst_dev, PCI_INIT_ENABLE,
          tmp | PCI_EN_INIT_WR );
 fbiinit0 = sst_read (FBIINIT0);
 if (par->vgapass) {
  sst_write(FBIINIT0, fbiinit0 & ~DIS_VGA_PASSTHROUGH);
  fb_info(info, "Enabling VGA pass-through\n");
 } else {
  sst_write(FBIINIT0, fbiinit0 | DIS_VGA_PASSTHROUGH);
  fb_info(info, "Disabling VGA pass-through\n");
 }
 pci_write_config_dword(sst_dev, PCI_INIT_ENABLE, tmp);
}
