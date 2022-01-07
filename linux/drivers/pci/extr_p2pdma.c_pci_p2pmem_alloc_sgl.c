
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scatterlist {int dummy; } ;
struct pci_dev {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (struct scatterlist*) ;
 struct scatterlist* kzalloc (int,int ) ;
 void* pci_alloc_p2pmem (struct pci_dev*,int ) ;
 int sg_init_table (struct scatterlist*,int) ;
 int sg_set_buf (struct scatterlist*,void*,int ) ;

struct scatterlist *pci_p2pmem_alloc_sgl(struct pci_dev *pdev,
      unsigned int *nents, u32 length)
{
 struct scatterlist *sg;
 void *addr;

 sg = kzalloc(sizeof(*sg), GFP_KERNEL);
 if (!sg)
  return ((void*)0);

 sg_init_table(sg, 1);

 addr = pci_alloc_p2pmem(pdev, length);
 if (!addr)
  goto out_free_sg;

 sg_set_buf(sg, addr, length);
 *nents = 1;
 return sg;

out_free_sg:
 kfree(sg);
 return ((void*)0);
}
