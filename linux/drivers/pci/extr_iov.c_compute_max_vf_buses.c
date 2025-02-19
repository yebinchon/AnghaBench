
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_sriov {int total_VFs; int max_VF_buses; int stride; int offset; } ;
struct pci_dev {struct pci_sriov* sriov; } ;


 int EIO ;
 int pci_iov_set_numvfs (struct pci_dev*,int) ;
 int pci_iov_virtfn_bus (struct pci_dev*,int) ;

__attribute__((used)) static int compute_max_vf_buses(struct pci_dev *dev)
{
 struct pci_sriov *iov = dev->sriov;
 int nr_virtfn, busnr, rc = 0;

 for (nr_virtfn = iov->total_VFs; nr_virtfn; nr_virtfn--) {
  pci_iov_set_numvfs(dev, nr_virtfn);
  if (!iov->offset || (nr_virtfn > 1 && !iov->stride)) {
   rc = -EIO;
   goto out;
  }

  busnr = pci_iov_virtfn_bus(dev, nr_virtfn - 1);
  if (busnr > iov->max_VF_buses)
   iov->max_VF_buses = busnr;
 }

out:
 pci_iov_set_numvfs(dev, 0);
 return rc;
}
