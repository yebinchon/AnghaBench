
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct sprd_adi {unsigned long slave_pbase; unsigned long slave_vbase; } ;



__attribute__((used)) static unsigned long sprd_adi_to_vaddr(struct sprd_adi *sadi, u32 paddr)
{
 return (paddr - sadi->slave_pbase + sadi->slave_vbase);
}
