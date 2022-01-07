
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_lkbidr_spin; int ls_lkbidr; } ;
struct dlm_lkb {int lkb_nodeid; int lkb_id; int lkb_cb_work; int lkb_cb_mutex; int lkb_cb_list; int lkb_time_list; int lkb_rsb_lookup; int lkb_ownqueue; int lkb_ref; int lkb_grmode; } ;


 int DLM_LOCK_IV ;
 int ENOMEM ;
 int GFP_NOFS ;
 int GFP_NOWAIT ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 struct dlm_lkb* dlm_allocate_lkb (struct dlm_ls*) ;
 int dlm_callback_work ;
 int dlm_free_lkb (struct dlm_lkb*) ;
 int idr_alloc (int *,struct dlm_lkb*,int,int ,int ) ;
 int idr_preload (int ) ;
 int idr_preload_end () ;
 int kref_init (int *) ;
 int log_error (struct dlm_ls*,char*,int) ;
 int mutex_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int create_lkb(struct dlm_ls *ls, struct dlm_lkb **lkb_ret)
{
 struct dlm_lkb *lkb;
 int rv;

 lkb = dlm_allocate_lkb(ls);
 if (!lkb)
  return -ENOMEM;

 lkb->lkb_nodeid = -1;
 lkb->lkb_grmode = DLM_LOCK_IV;
 kref_init(&lkb->lkb_ref);
 INIT_LIST_HEAD(&lkb->lkb_ownqueue);
 INIT_LIST_HEAD(&lkb->lkb_rsb_lookup);
 INIT_LIST_HEAD(&lkb->lkb_time_list);
 INIT_LIST_HEAD(&lkb->lkb_cb_list);
 mutex_init(&lkb->lkb_cb_mutex);
 INIT_WORK(&lkb->lkb_cb_work, dlm_callback_work);

 idr_preload(GFP_NOFS);
 spin_lock(&ls->ls_lkbidr_spin);
 rv = idr_alloc(&ls->ls_lkbidr, lkb, 1, 0, GFP_NOWAIT);
 if (rv >= 0)
  lkb->lkb_id = rv;
 spin_unlock(&ls->ls_lkbidr_spin);
 idr_preload_end();

 if (rv < 0) {
  log_error(ls, "create_lkb idr error %d", rv);
  dlm_free_lkb(lkb);
  return rv;
 }

 *lkb_ret = lkb;
 return 0;
}
