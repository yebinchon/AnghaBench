
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int WARN_ON (int *) ;
 int asus_hides_smbus ;
 int * asus_rcba_base ;
 int * ioremap_nocache (int,int) ;
 scalar_t__ likely (int) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;

__attribute__((used)) static void asus_hides_smbus_lpc_ich6_suspend(struct pci_dev *dev)
{
 u32 rcba;

 if (likely(!asus_hides_smbus))
  return;
 WARN_ON(asus_rcba_base);

 pci_read_config_dword(dev, 0xF0, &rcba);

 asus_rcba_base = ioremap_nocache(rcba & 0xFFFFC000, 0x4000);
 if (asus_rcba_base == ((void*)0))
  return;
}
