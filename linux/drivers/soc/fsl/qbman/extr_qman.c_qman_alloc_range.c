
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct gen_pool {int dummy; } ;


 unsigned long DPAA_GENALLOC_OFF ;
 int ENODEV ;
 int ENOMEM ;
 unsigned long gen_pool_alloc (struct gen_pool*,unsigned long) ;

__attribute__((used)) static int qman_alloc_range(struct gen_pool *p, u32 *result, u32 cnt)
{
 unsigned long addr;

 if (!p)
  return -ENODEV;

 addr = gen_pool_alloc(p, cnt);
 if (!addr)
  return -ENOMEM;

 *result = addr & ~DPAA_GENALLOC_OFF;

 return 0;
}
