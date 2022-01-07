
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SCLP_CMDW_CONFIGURE_PCI ;
 int do_pci_configure (int ,int ) ;

int sclp_pci_configure(u32 fid)
{
 return do_pci_configure(SCLP_CMDW_CONFIGURE_PCI, fid);
}
