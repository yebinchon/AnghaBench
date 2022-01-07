
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int pci_read_config_dword (struct pci_dev*,int,int *) ;
 int pci_write_config_dword (struct pci_dev*,int,int ) ;

__attribute__((used)) static void pci_clear_and_set_dword(struct pci_dev *pdev, int pos,
        u32 clear, u32 set)
{
 u32 val;

 pci_read_config_dword(pdev, pos, &val);
 val &= ~clear;
 val |= set;
 pci_write_config_dword(pdev, pos, val);
}
