
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_sgl_desc {int dummy; } ;


 int DIV_ROUND_UP (unsigned int,int ) ;
 int PAGE_SIZE ;

__attribute__((used)) static int nvme_pci_npages_sgl(unsigned int num_seg)
{
 return DIV_ROUND_UP(num_seg * sizeof(struct nvme_sgl_desc), PAGE_SIZE);
}
