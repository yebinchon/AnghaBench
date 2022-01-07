
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {scalar_t__ res_first_lkid; int res_nodeid; int res_master_nodeid; int res_name; int res_dir_nodeid; int res_ls; int res_lookup; } ;
struct dlm_lkb {scalar_t__ lkb_id; int lkb_nodeid; int lkb_rsb_lookup; } ;


 int RSB_MASTER_UNCERTAIN ;
 int dlm_dir_nodeid (struct dlm_rsb*) ;
 int dlm_our_nodeid () ;
 int list_add_tail (int *,int *) ;
 int log_debug (int ,char*,scalar_t__,int,int ,int ) ;
 int rsb_clear_flag (struct dlm_rsb*,int ) ;
 scalar_t__ rsb_flag (struct dlm_rsb*,int ) ;
 int send_lookup (struct dlm_rsb*,struct dlm_lkb*) ;
 int wait_pending_remove (struct dlm_rsb*) ;

__attribute__((used)) static int set_master(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
 int our_nodeid = dlm_our_nodeid();

 if (rsb_flag(r, RSB_MASTER_UNCERTAIN)) {
  rsb_clear_flag(r, RSB_MASTER_UNCERTAIN);
  r->res_first_lkid = lkb->lkb_id;
  lkb->lkb_nodeid = r->res_nodeid;
  return 0;
 }

 if (r->res_first_lkid && r->res_first_lkid != lkb->lkb_id) {
  list_add_tail(&lkb->lkb_rsb_lookup, &r->res_lookup);
  return 1;
 }

 if (r->res_master_nodeid == our_nodeid) {
  lkb->lkb_nodeid = 0;
  return 0;
 }

 if (r->res_master_nodeid) {
  lkb->lkb_nodeid = r->res_master_nodeid;
  return 0;
 }

 if (dlm_dir_nodeid(r) == our_nodeid) {






  log_debug(r->res_ls, "set_master %x self master %d dir %d %s",
     lkb->lkb_id, r->res_master_nodeid, r->res_dir_nodeid,
     r->res_name);
  r->res_master_nodeid = our_nodeid;
  r->res_nodeid = 0;
  lkb->lkb_nodeid = 0;
  return 0;
 }

 wait_pending_remove(r);

 r->res_first_lkid = lkb->lkb_id;
 send_lookup(r, lkb);
 return 1;
}
