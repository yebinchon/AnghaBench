
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct fc_exch_pool {int dummy; } ;
struct fc_exch {int dummy; } ;



__attribute__((used)) static inline void fc_exch_ptr_set(struct fc_exch_pool *pool, u16 index,
       struct fc_exch *ep)
{
 ((struct fc_exch **)(pool + 1))[index] = ep;
}
