
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct nvmet_ns {int device_path; scalar_t__ p2p_dev; TYPE_1__* bdev; int use_p2pmem; } ;
struct TYPE_2__ {int bd_queue; } ;


 int EINVAL ;
 int blk_queue_pci_p2pdma (int ) ;
 int nvmet_ns_dev (struct nvmet_ns*) ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_p2pdma_distance (scalar_t__,int ,int) ;
 struct pci_dev* pci_p2pmem_find (int ) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int nvmet_p2pmem_ns_enable(struct nvmet_ns *ns)
{
 int ret;
 struct pci_dev *p2p_dev;

 if (!ns->use_p2pmem)
  return 0;

 if (!ns->bdev) {
  pr_err("peer-to-peer DMA is not supported by non-block device namespaces\n");
  return -EINVAL;
 }

 if (!blk_queue_pci_p2pdma(ns->bdev->bd_queue)) {
  pr_err("peer-to-peer DMA is not supported by the driver of %s\n",
         ns->device_path);
  return -EINVAL;
 }

 if (ns->p2p_dev) {
  ret = pci_p2pdma_distance(ns->p2p_dev, nvmet_ns_dev(ns), 1);
  if (ret < 0)
   return -EINVAL;
 } else {







  p2p_dev = pci_p2pmem_find(nvmet_ns_dev(ns));
  if (!p2p_dev) {
   pr_err("no peer-to-peer memory is available for %s\n",
          ns->device_path);
   return -EINVAL;
  }

  pci_dev_put(p2p_dev);
 }

 return 0;
}
