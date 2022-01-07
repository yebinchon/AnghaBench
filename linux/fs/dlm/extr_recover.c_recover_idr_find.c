
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct dlm_rsb {int dummy; } ;
struct dlm_ls {int ls_recover_idr_lock; int ls_recover_idr; } ;


 struct dlm_rsb* idr_find (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct dlm_rsb *recover_idr_find(struct dlm_ls *ls, uint64_t id)
{
 struct dlm_rsb *r;

 spin_lock(&ls->ls_recover_idr_lock);
 r = idr_find(&ls->ls_recover_idr, (int)id);
 spin_unlock(&ls->ls_recover_idr_lock);
 return r;
}
