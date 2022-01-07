
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb2_mem_region {int lock_count; int id; int lock; } ;


 int atomic_inc (int *) ;
 int down_read_nested (int *,int ) ;

__attribute__((used)) static inline struct omapfb2_mem_region *
omapfb_get_mem_region(struct omapfb2_mem_region *rg)
{
 down_read_nested(&rg->lock, rg->id);
 atomic_inc(&rg->lock_count);
 return rg;
}
