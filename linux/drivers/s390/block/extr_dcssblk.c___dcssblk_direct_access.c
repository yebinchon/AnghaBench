
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcssblk_dev_info {int end; int start; } ;
typedef long resource_size_t ;
typedef unsigned long pgoff_t ;
typedef int pfn_t ;


 unsigned long PAGE_SIZE ;
 int PFN_DEV ;
 int PFN_DOWN (int) ;
 int PFN_SPECIAL ;
 int __pfn_to_pfn_t (int ,int) ;

__attribute__((used)) static long
__dcssblk_direct_access(struct dcssblk_dev_info *dev_info, pgoff_t pgoff,
  long nr_pages, void **kaddr, pfn_t *pfn)
{
 resource_size_t offset = pgoff * PAGE_SIZE;
 unsigned long dev_sz;

 dev_sz = dev_info->end - dev_info->start + 1;
 if (kaddr)
  *kaddr = (void *) dev_info->start + offset;
 if (pfn)
  *pfn = __pfn_to_pfn_t(PFN_DOWN(dev_info->start + offset),
    PFN_DEV|PFN_SPECIAL);

 return (dev_sz - offset) / PAGE_SIZE;
}
