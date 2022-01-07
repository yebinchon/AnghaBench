
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_message {int dummy; } ;
struct dlm_lkb {int dummy; } ;


 int _grant_lock (struct dlm_rsb*,struct dlm_lkb*) ;
 int set_lvb_lock_pc (struct dlm_rsb*,struct dlm_lkb*,struct dlm_message*) ;

__attribute__((used)) static void grant_lock_pc(struct dlm_rsb *r, struct dlm_lkb *lkb,
     struct dlm_message *ms)
{
 set_lvb_lock_pc(r, lkb, ms);
 _grant_lock(r, lkb);
}
