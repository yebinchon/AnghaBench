
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nd_region_data {int dummy; } ;
struct nd_region {int ndr_mappings; int dev; } ;
struct TYPE_2__ {scalar_t__ pid; } ;


 TYPE_1__* current ;
 struct nd_region_data* dev_get_drvdata (int *) ;
 int flush_idx ;
 int hash_32 (scalar_t__,int) ;
 scalar_t__ ndrd_get_flush_wpq (struct nd_region_data*,int,int) ;
 int this_cpu_add_return (int ,int ) ;
 int this_cpu_read (int ) ;
 int wmb () ;
 int writeq (int,scalar_t__) ;

int generic_nvdimm_flush(struct nd_region *nd_region)
{
 struct nd_region_data *ndrd = dev_get_drvdata(&nd_region->dev);
 int i, idx;





 idx = this_cpu_read(flush_idx);
 idx = this_cpu_add_return(flush_idx, hash_32(current->pid + idx, 8));
 wmb();
 for (i = 0; i < nd_region->ndr_mappings; i++)
  if (ndrd_get_flush_wpq(ndrd, i, 0))
   writeq(1, ndrd_get_flush_wpq(ndrd, i, idx));
 wmb();

 return 0;
}
