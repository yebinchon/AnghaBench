
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int mdelay (int) ;
 int pci_dbg (struct pci_dev*,char*,int,int ,int ) ;
 int pci_read_config_dword (struct pci_dev*,int,int *) ;
 int pci_write_config_dword (struct pci_dev*,int,int ) ;

__attribute__((used)) static void pci_restore_config_dword(struct pci_dev *pdev, int offset,
         u32 saved_val, int retry, bool force)
{
 u32 val;

 pci_read_config_dword(pdev, offset, &val);
 if (!force && val == saved_val)
  return;

 for (;;) {
  pci_dbg(pdev, "restoring config space at offset %#x (was %#x, writing %#x)\n",
   offset, val, saved_val);
  pci_write_config_dword(pdev, offset, saved_val);
  if (retry-- <= 0)
   return;

  pci_read_config_dword(pdev, offset, &val);
  if (val == saved_val)
   return;

  mdelay(1);
 }
}
