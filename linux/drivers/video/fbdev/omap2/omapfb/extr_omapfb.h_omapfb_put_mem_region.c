
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb2_mem_region {int lock; int lock_count; } ;


 int atomic_dec (int *) ;
 int up_read (int *) ;

__attribute__((used)) static inline void omapfb_put_mem_region(struct omapfb2_mem_region *rg)
{
 atomic_dec(&rg->lock_count);
 up_read(&rg->lock);
}
