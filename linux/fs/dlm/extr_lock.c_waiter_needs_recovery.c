
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int dummy; } ;
struct dlm_lkb {int lkb_wait_nodeid; } ;


 scalar_t__ dlm_is_removed (struct dlm_ls*,int ) ;
 scalar_t__ dlm_no_directory (struct dlm_ls*) ;

__attribute__((used)) static int waiter_needs_recovery(struct dlm_ls *ls, struct dlm_lkb *lkb,
     int dir_nodeid)
{
 if (dlm_no_directory(ls))
  return 1;

 if (dlm_is_removed(ls, lkb->lkb_wait_nodeid))
  return 1;

 return 0;
}
