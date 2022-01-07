
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_dir_nodeid; scalar_t__ res_nodeid; scalar_t__ res_master_nodeid; int res_name; int res_first_lkid; } ;
struct dlm_ls {int dummy; } ;


 int ENOTBLK ;
 scalar_t__ dlm_no_directory (struct dlm_ls*) ;
 scalar_t__ dlm_our_nodeid () ;
 int dlm_print_rsb (struct dlm_rsb*) ;
 int log_debug (struct dlm_ls*,char*,int,scalar_t__,int,int ,int ) ;
 int log_error (struct dlm_ls*,char*,int,scalar_t__,int,...) ;

__attribute__((used)) static int validate_master_nodeid(struct dlm_ls *ls, struct dlm_rsb *r,
      int from_nodeid)
{
 if (dlm_no_directory(ls)) {
  log_error(ls, "find_rsb keep from_nodeid %d master %d dir %d",
     from_nodeid, r->res_master_nodeid,
     r->res_dir_nodeid);
  dlm_print_rsb(r);
  return -ENOTBLK;
 }

 if (from_nodeid != r->res_dir_nodeid) {




  if (r->res_master_nodeid) {
   log_debug(ls, "validate master from_other %d master %d "
      "dir %d first %x %s", from_nodeid,
      r->res_master_nodeid, r->res_dir_nodeid,
      r->res_first_lkid, r->res_name);
  }
  return -ENOTBLK;
 } else {



  if (r->res_master_nodeid) {
   log_error(ls, "validate master from_dir %d master %d "
      "first %x %s",
      from_nodeid, r->res_master_nodeid,
      r->res_first_lkid, r->res_name);
  }

  r->res_master_nodeid = dlm_our_nodeid();
  r->res_nodeid = 0;
  return 0;
 }
}
