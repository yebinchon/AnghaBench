
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmem_device {int dummy; } ;
struct dax_device {int dummy; } ;
typedef int pgoff_t ;
typedef int pfn_t ;


 long __pmem_direct_access (struct pmem_device*,int ,long,void**,int *) ;
 struct pmem_device* dax_get_private (struct dax_device*) ;

__attribute__((used)) static long pmem_dax_direct_access(struct dax_device *dax_dev,
  pgoff_t pgoff, long nr_pages, void **kaddr, pfn_t *pfn)
{
 struct pmem_device *pmem = dax_get_private(dax_dev);

 return __pmem_direct_access(pmem, pgoff, nr_pages, kaddr, pfn);
}
