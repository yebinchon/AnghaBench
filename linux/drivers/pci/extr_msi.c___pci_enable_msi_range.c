
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int msi_enabled; scalar_t__ msix_enabled; } ;
struct irq_affinity {int dummy; } ;


 int EINVAL ;
 int ENOSPC ;
 int ERANGE ;
 scalar_t__ WARN_ON_ONCE (int ) ;
 int irq_calc_affinity_vectors (int,int,struct irq_affinity*) ;
 int msi_capability_init (struct pci_dev*,int,struct irq_affinity*) ;
 int pci_info (struct pci_dev*,char*) ;
 int pci_msi_supported (struct pci_dev*,int) ;
 int pci_msi_vec_count (struct pci_dev*) ;

__attribute__((used)) static int __pci_enable_msi_range(struct pci_dev *dev, int minvec, int maxvec,
      struct irq_affinity *affd)
{
 int nvec;
 int rc;

 if (!pci_msi_supported(dev, minvec))
  return -EINVAL;


 if (dev->msix_enabled) {
  pci_info(dev, "can't enable MSI (MSI-X already enabled)\n");
  return -EINVAL;
 }

 if (maxvec < minvec)
  return -ERANGE;

 if (WARN_ON_ONCE(dev->msi_enabled))
  return -EINVAL;

 nvec = pci_msi_vec_count(dev);
 if (nvec < 0)
  return nvec;
 if (nvec < minvec)
  return -ENOSPC;

 if (nvec > maxvec)
  nvec = maxvec;

 for (;;) {
  if (affd) {
   nvec = irq_calc_affinity_vectors(minvec, nvec, affd);
   if (nvec < minvec)
    return -ENOSPC;
  }

  rc = msi_capability_init(dev, nvec, affd);
  if (rc == 0)
   return nvec;

  if (rc < 0)
   return rc;
  if (rc < minvec)
   return -ENOSPC;

  nvec = rc;
 }
}
