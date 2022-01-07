
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ulist {int dummy; } ;
typedef int gfp_t ;


 int ulist_add_merge (struct ulist*,int ,int ,int *,int ) ;

int ulist_add(struct ulist *ulist, u64 val, u64 aux, gfp_t gfp_mask)
{
 return ulist_add_merge(ulist, val, aux, ((void*)0), gfp_mask);
}
