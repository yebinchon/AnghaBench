
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct fc_exch_pool {int dummy; } ;
struct fc_exch {int dummy; } ;



__attribute__((used)) static inline struct fc_exch *fc_exch_ptr_get(struct fc_exch_pool *pool,
           u16 index)
{
 struct fc_exch **exches = (struct fc_exch **)(pool + 1);
 return exches[index];
}
