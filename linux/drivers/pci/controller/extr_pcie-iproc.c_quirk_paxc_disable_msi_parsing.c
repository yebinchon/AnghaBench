
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ hdr_type; int bus; } ;
struct iproc_pcie {int dummy; } ;


 scalar_t__ PCI_HEADER_TYPE_BRIDGE ;
 struct iproc_pcie* iproc_data (int ) ;
 int iproc_pcie_paxc_v2_msi_steer (struct iproc_pcie*,int ,int) ;

__attribute__((used)) static void quirk_paxc_disable_msi_parsing(struct pci_dev *pdev)
{
 struct iproc_pcie *pcie = iproc_data(pdev->bus);

 if (pdev->hdr_type == PCI_HEADER_TYPE_BRIDGE)
  iproc_pcie_paxc_v2_msi_steer(pcie, 0, 0);
}
