
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dlm_ls {int ls_lkbidr_spin; int ls_lkbidr; } ;
struct dlm_lkb {int lkb_ref; } ;


 int ENOENT ;
 struct dlm_lkb* idr_find (int *,int ) ;
 int kref_get (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int find_lkb(struct dlm_ls *ls, uint32_t lkid, struct dlm_lkb **lkb_ret)
{
 struct dlm_lkb *lkb;

 spin_lock(&ls->ls_lkbidr_spin);
 lkb = idr_find(&ls->ls_lkbidr, lkid);
 if (lkb)
  kref_get(&lkb->lkb_ref);
 spin_unlock(&ls->ls_lkbidr_spin);

 *lkb_ret = lkb;
 return lkb ? 0 : -ENOENT;
}
