
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_message {int m_remid; } ;
struct dlm_ls {int dummy; } ;
struct dlm_lkb {struct dlm_rsb* lkb_resource; } ;


 int dlm_put_lkb (struct dlm_lkb*) ;
 int find_lkb (struct dlm_ls*,int ,struct dlm_lkb**) ;
 int grant_lock_pc (struct dlm_rsb*,struct dlm_lkb*,struct dlm_message*) ;
 int hold_rsb (struct dlm_rsb*) ;
 scalar_t__ is_altmode (struct dlm_lkb*) ;
 int lock_rsb (struct dlm_rsb*) ;
 int munge_altmode (struct dlm_lkb*,struct dlm_message*) ;
 int put_rsb (struct dlm_rsb*) ;
 int queue_cast (struct dlm_rsb*,struct dlm_lkb*,int ) ;
 int receive_flags_reply (struct dlm_lkb*,struct dlm_message*) ;
 int unlock_rsb (struct dlm_rsb*) ;
 int validate_message (struct dlm_lkb*,struct dlm_message*) ;

__attribute__((used)) static int receive_grant(struct dlm_ls *ls, struct dlm_message *ms)
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

 receive_flags_reply(lkb, ms);
 if (is_altmode(lkb))
  munge_altmode(lkb, ms);
 grant_lock_pc(r, lkb, ms);
 queue_cast(r, lkb, 0);
 out:
 unlock_rsb(r);
 put_rsb(r);
 dlm_put_lkb(lkb);
 return 0;
}
