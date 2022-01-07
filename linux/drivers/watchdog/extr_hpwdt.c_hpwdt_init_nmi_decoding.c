
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int NMI_IO_CHECK ;
 int NMI_SERR ;
 int NMI_UNKNOWN ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*,int) ;
 int hpwdt_pretimeout ;
 int register_nmi_handler (int ,int ,int ,char*) ;
 int unregister_nmi_handler (int ,char*) ;

__attribute__((used)) static int hpwdt_init_nmi_decoding(struct pci_dev *dev)
{
 return 0;
}
