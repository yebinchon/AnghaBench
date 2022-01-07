
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int pci_read_config_dword (struct pci_dev*,int,int *) ;
 int pci_write_config_dword (struct pci_dev*,int,int ) ;

__attribute__((used)) static void pci_vc_save_restore_dwords(struct pci_dev *dev, int pos,
           u32 *buf, int dwords, bool save)
{
 int i;

 for (i = 0; i < dwords; i++, buf++) {
  if (save)
   pci_read_config_dword(dev, pos + (i * 4), buf);
  else
   pci_write_config_dword(dev, pos + (i * 4), *buf);
 }
}
