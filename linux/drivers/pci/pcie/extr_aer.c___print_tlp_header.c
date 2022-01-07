
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct aer_header_log_regs {int dw3; int dw2; int dw1; int dw0; } ;


 int pci_err (struct pci_dev*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static void __print_tlp_header(struct pci_dev *dev,
          struct aer_header_log_regs *t)
{
 pci_err(dev, "  TLP Header: %08x %08x %08x %08x\n",
  t->dw0, t->dw1, t->dw2, t->dw3);
}
