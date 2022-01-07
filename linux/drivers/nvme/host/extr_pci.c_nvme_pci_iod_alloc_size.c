
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct nvme_dev {int dummy; } ;
typedef int __le64 ;


 int nvme_npages (unsigned int,struct nvme_dev*) ;
 int nvme_pci_npages_sgl (unsigned int) ;

__attribute__((used)) static unsigned int nvme_pci_iod_alloc_size(struct nvme_dev *dev,
  unsigned int size, unsigned int nseg, bool use_sgl)
{
 size_t alloc_size;

 if (use_sgl)
  alloc_size = sizeof(__le64 *) * nvme_pci_npages_sgl(nseg);
 else
  alloc_size = sizeof(__le64 *) * nvme_npages(size, dev);

 return alloc_size + sizeof(struct scatterlist) * nseg;
}
