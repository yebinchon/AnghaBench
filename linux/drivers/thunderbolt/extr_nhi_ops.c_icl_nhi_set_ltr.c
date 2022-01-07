
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_nhi {int pdev; } ;


 int VS_CAP_15 ;
 int VS_CAP_16 ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;

__attribute__((used)) static void icl_nhi_set_ltr(struct tb_nhi *nhi)
{
 u32 max_ltr, ltr;

 pci_read_config_dword(nhi->pdev, VS_CAP_16, &max_ltr);
 max_ltr &= 0xffff;

 ltr = max_ltr << 16 | max_ltr;
 pci_write_config_dword(nhi->pdev, VS_CAP_15, ltr);
}
