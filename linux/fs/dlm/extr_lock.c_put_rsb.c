
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct dlm_rsb {size_t res_bucket; int res_ref; struct dlm_ls* res_ls; } ;
struct dlm_ls {TYPE_1__* ls_rsbtbl; } ;
struct TYPE_2__ {int lock; } ;


 int kref_put (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int toss_rsb ;

__attribute__((used)) static void put_rsb(struct dlm_rsb *r)
{
 struct dlm_ls *ls = r->res_ls;
 uint32_t bucket = r->res_bucket;

 spin_lock(&ls->ls_rsbtbl[bucket].lock);
 kref_put(&r->res_ref, toss_rsb);
 spin_unlock(&ls->ls_rsbtbl[bucket].lock);
}
