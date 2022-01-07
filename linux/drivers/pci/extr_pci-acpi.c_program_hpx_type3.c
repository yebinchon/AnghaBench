
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct hpx_type3 {int dummy; } ;


 int pci_is_pcie (struct pci_dev*) ;
 int program_hpx_type3_register (struct pci_dev*,struct hpx_type3*) ;

__attribute__((used)) static void program_hpx_type3(struct pci_dev *dev, struct hpx_type3 *hpx)
{
 if (!hpx)
  return;

 if (!pci_is_pcie(dev))
  return;

 program_hpx_type3_register(dev, hpx);
}
