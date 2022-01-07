
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dlm_ls {int ls_lkbidr_spin; int ls_lkbidr; } ;
struct dlm_lkb {scalar_t__ lkb_lvbptr; int lkb_ref; int lkb_id; } ;


 int detach_lkb (struct dlm_lkb*) ;
 int dlm_free_lkb (struct dlm_lkb*) ;
 int dlm_free_lvb (scalar_t__) ;
 int idr_remove (int *,int ) ;
 scalar_t__ is_master_copy (struct dlm_lkb*) ;
 int kill_lkb ;
 scalar_t__ kref_put (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int __put_lkb(struct dlm_ls *ls, struct dlm_lkb *lkb)
{
 uint32_t lkid = lkb->lkb_id;

 spin_lock(&ls->ls_lkbidr_spin);
 if (kref_put(&lkb->lkb_ref, kill_lkb)) {
  idr_remove(&ls->ls_lkbidr, lkid);
  spin_unlock(&ls->ls_lkbidr_spin);

  detach_lkb(lkb);


  if (lkb->lkb_lvbptr && is_master_copy(lkb))
   dlm_free_lvb(lkb->lkb_lvbptr);
  dlm_free_lkb(lkb);
  return 1;
 } else {
  spin_unlock(&ls->ls_lkbidr_spin);
  return 0;
 }
}
