
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_blk_region {int dummy; } ;


 unsigned long ARCH_MEMREMAP_PMEM ;

unsigned long nd_blk_memremap_flags(struct nd_blk_region *ndbr)
{

 return ARCH_MEMREMAP_PMEM;
}
