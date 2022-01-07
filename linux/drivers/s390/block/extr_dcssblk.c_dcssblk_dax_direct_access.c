
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dcssblk_dev_info {int dummy; } ;
struct dax_device {int dummy; } ;
typedef int pgoff_t ;
typedef int pfn_t ;


 long __dcssblk_direct_access (struct dcssblk_dev_info*,int ,long,void**,int *) ;
 struct dcssblk_dev_info* dax_get_private (struct dax_device*) ;

__attribute__((used)) static long
dcssblk_dax_direct_access(struct dax_device *dax_dev, pgoff_t pgoff,
  long nr_pages, void **kaddr, pfn_t *pfn)
{
 struct dcssblk_dev_info *dev_info = dax_get_private(dax_dev);

 return __dcssblk_direct_access(dev_info, pgoff, nr_pages, kaddr, pfn);
}
