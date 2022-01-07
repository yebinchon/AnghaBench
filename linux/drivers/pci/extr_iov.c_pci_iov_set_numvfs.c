
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_sriov {int stride; scalar_t__ pos; int offset; } ;
struct pci_dev {struct pci_sriov* sriov; } ;


 scalar_t__ PCI_SRIOV_NUM_VF ;
 scalar_t__ PCI_SRIOV_VF_OFFSET ;
 scalar_t__ PCI_SRIOV_VF_STRIDE ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int *) ;
 int pci_write_config_word (struct pci_dev*,scalar_t__,int) ;

__attribute__((used)) static inline void pci_iov_set_numvfs(struct pci_dev *dev, int nr_virtfn)
{
 struct pci_sriov *iov = dev->sriov;

 pci_write_config_word(dev, iov->pos + PCI_SRIOV_NUM_VF, nr_virtfn);
 pci_read_config_word(dev, iov->pos + PCI_SRIOV_VF_OFFSET, &iov->offset);
 pci_read_config_word(dev, iov->pos + PCI_SRIOV_VF_STRIDE, &iov->stride);
}
