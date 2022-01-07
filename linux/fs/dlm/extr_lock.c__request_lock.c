
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_lkb {int dummy; } ;


 int do_request (struct dlm_rsb*,struct dlm_lkb*) ;
 int do_request_effects (struct dlm_rsb*,struct dlm_lkb*,int) ;
 scalar_t__ is_remote (struct dlm_rsb*) ;
 int send_request (struct dlm_rsb*,struct dlm_lkb*) ;
 int set_master (struct dlm_rsb*,struct dlm_lkb*) ;

__attribute__((used)) static int _request_lock(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
 int error;



 error = set_master(r, lkb);
 if (error < 0)
  goto out;
 if (error) {
  error = 0;
  goto out;
 }

 if (is_remote(r)) {

  error = send_request(r, lkb);
 } else {
  error = do_request(r, lkb);


  do_request_effects(r, lkb, error);
 }
 out:
 return error;
}
