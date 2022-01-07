
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int DUMP_PREFIX_OFFSET ;
 int KERN_INFO ;
 int pci_info (struct pci_dev*,char*) ;
 int pci_read_config_dword (struct pci_dev*,int,int *) ;
 int print_hex_dump (int ,char*,int ,int,int,int *,int,int) ;

__attribute__((used)) static void early_dump_pci_device(struct pci_dev *pdev)
{
 u32 value[256 / 4];
 int i;

 pci_info(pdev, "config space:\n");

 for (i = 0; i < 256; i += 4)
  pci_read_config_dword(pdev, i, &value[i / 4]);

 print_hex_dump(KERN_INFO, "", DUMP_PREFIX_OFFSET, 16, 1,
         value, 256, 0);
}
