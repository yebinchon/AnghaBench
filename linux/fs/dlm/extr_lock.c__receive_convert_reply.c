
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_message {int dummy; } ;
struct dlm_lkb {struct dlm_rsb* lkb_resource; } ;


 int __receive_convert_reply (struct dlm_rsb*,struct dlm_lkb*,struct dlm_message*) ;
 int hold_rsb (struct dlm_rsb*) ;
 int lock_rsb (struct dlm_rsb*) ;
 int put_rsb (struct dlm_rsb*) ;
 int remove_from_waiters_ms (struct dlm_lkb*,struct dlm_message*) ;
 int unlock_rsb (struct dlm_rsb*) ;
 int validate_message (struct dlm_lkb*,struct dlm_message*) ;

__attribute__((used)) static void _receive_convert_reply(struct dlm_lkb *lkb, struct dlm_message *ms)
{
 struct dlm_rsb *r = lkb->lkb_resource;
 int error;

 hold_rsb(r);
 lock_rsb(r);

 error = validate_message(lkb, ms);
 if (error)
  goto out;


 error = remove_from_waiters_ms(lkb, ms);
 if (error)
  goto out;

 __receive_convert_reply(r, lkb, ms);
 out:
 unlock_rsb(r);
 put_rsb(r);
}
