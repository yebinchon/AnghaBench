
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;


 unsigned long DPAA_GENALLOC_OFF ;
 int ENOMEM ;
 int bm_bpalloc ;
 unsigned long gen_pool_alloc (int ,unsigned long) ;

__attribute__((used)) static int bm_alloc_bpid_range(u32 *result, u32 count)
{
 unsigned long addr;

 addr = gen_pool_alloc(bm_bpalloc, count);
 if (!addr)
  return -ENOMEM;

 *result = addr & ~DPAA_GENALLOC_OFF;

 return 0;
}
