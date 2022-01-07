
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_message {int m_bastmode; int m_remid; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {int lkb_highbast; struct dlm_rsb* lkb_resource; } ;


 int dlm_put_lkb (struct dlm_lkb*) ;
 int find_lkb (struct dlm_ls*,int ,struct dlm_lkb**) ;
 int hold_rsb (struct dlm_rsb*) ;
 int lock_rsb (struct dlm_rsb*) ;
 int put_rsb (struct dlm_rsb*) ;
 int queue_bast (struct dlm_rsb*,struct dlm_lkb*,int ) ;
 int unlock_rsb (struct dlm_rsb*) ;
 int validate_message (struct dlm_lkb*,struct dlm_message*) ;

__attribute__((used)) static int receive_bast(struct dlm_ls *ls, struct dlm_message *ms)
{
 struct dlm_lkb *lkb;
 struct dlm_rsb *r;
 int error;

 error = find_lkb(ls, ms->m_remid, &lkb);
 if (error)
  return error;

 r = lkb->lkb_resource;

 hold_rsb(r);
 lock_rsb(r);

 error = validate_message(lkb, ms);
 if (error)
  goto out;

 queue_bast(r, lkb, ms->m_bastmode);
 lkb->lkb_highbast = ms->m_bastmode;
 out:
 unlock_rsb(r);
 put_rsb(r);
 dlm_put_lkb(lkb);
 return 0;
}
