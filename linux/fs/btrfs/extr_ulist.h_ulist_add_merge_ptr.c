
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t u64 ;
struct ulist {int dummy; } ;
typedef int gfp_t ;


 int ulist_add_merge (struct ulist*,uintptr_t,uintptr_t,uintptr_t*,int ) ;

__attribute__((used)) static inline int ulist_add_merge_ptr(struct ulist *ulist, u64 val, void *aux,
          void **old_aux, gfp_t gfp_mask)
{






 return ulist_add_merge(ulist, val, (u64)aux, (u64 *)old_aux, gfp_mask);

}
