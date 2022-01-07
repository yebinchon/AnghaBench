
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_lkb {int dummy; } ;


 int grant_lock (struct dlm_rsb*,struct dlm_lkb*) ;
 scalar_t__ is_master_copy (struct dlm_lkb*) ;
 int queue_cast (struct dlm_rsb*,struct dlm_lkb*,int ) ;
 int send_grant (struct dlm_rsb*,struct dlm_lkb*) ;

__attribute__((used)) static void grant_lock_pending(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
 grant_lock(r, lkb);
 if (is_master_copy(lkb))
  send_grant(r, lkb);
 else
  queue_cast(r, lkb, 0);
}
