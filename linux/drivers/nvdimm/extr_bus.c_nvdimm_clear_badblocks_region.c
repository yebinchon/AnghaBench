
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {scalar_t__ ndr_start; scalar_t__ ndr_size; scalar_t__ bb_state; int bb; } ;
struct device {int dummy; } ;
struct clear_badblocks_context {scalar_t__ phys; int cleared; } ;
typedef int sector_t ;
typedef scalar_t__ resource_size_t ;


 int badblocks_clear (int *,int,int) ;
 int is_memory (struct device*) ;
 int sysfs_notify_dirent (scalar_t__) ;
 struct nd_region* to_nd_region (struct device*) ;

__attribute__((used)) static int nvdimm_clear_badblocks_region(struct device *dev, void *data)
{
 struct clear_badblocks_context *ctx = data;
 struct nd_region *nd_region;
 resource_size_t ndr_end;
 sector_t sector;


 if (!is_memory(dev))
  return 0;

 nd_region = to_nd_region(dev);
 ndr_end = nd_region->ndr_start + nd_region->ndr_size - 1;


 if (ctx->phys < nd_region->ndr_start
   || (ctx->phys + ctx->cleared) > ndr_end)
  return 0;

 sector = (ctx->phys - nd_region->ndr_start) / 512;
 badblocks_clear(&nd_region->bb, sector, ctx->cleared / 512);

 if (nd_region->bb_state)
  sysfs_notify_dirent(nd_region->bb_state);

 return 0;
}
