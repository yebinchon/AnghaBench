
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_rsb {scalar_t__ res_master_nodeid; } ;
struct TYPE_2__ {int h_nodeid; } ;
struct dlm_message {int m_extra; int m_lkid; TYPE_1__ m_header; } ;
struct dlm_lkb {int lkb_flags; } ;
struct dlm_ls {struct dlm_lkb ls_stub_lkb; struct dlm_rsb ls_stub_rsb; } ;


 int DLM_IFL_MSTCPY ;
 int EBADR ;
 int EINPROGRESS ;
 int ENOTBLK ;
 int R_RECEIVE_REQUEST ;
 int __put_lkb (struct dlm_ls*,struct dlm_lkb*) ;
 int attach_lkb (struct dlm_rsb*,struct dlm_lkb*) ;
 int create_lkb (struct dlm_ls*,struct dlm_lkb**) ;
 scalar_t__ dlm_our_nodeid () ;
 int dlm_put_lkb (struct dlm_lkb*) ;
 int do_request (struct dlm_rsb*,struct dlm_lkb*) ;
 int do_request_effects (struct dlm_rsb*,struct dlm_lkb*,int) ;
 int find_rsb (struct dlm_ls*,int ,int,int,int ,struct dlm_rsb**) ;
 int lock_rsb (struct dlm_rsb*) ;
 int log_limit (struct dlm_ls*,char*,int ,int,int) ;
 int msleep (int) ;
 int put_rsb (struct dlm_rsb*) ;
 int receive_extralen (struct dlm_message*) ;
 int receive_flags (struct dlm_lkb*,struct dlm_message*) ;
 int receive_request_args (struct dlm_ls*,struct dlm_lkb*,struct dlm_message*) ;
 int send_repeat_remove (struct dlm_ls*,int ,int) ;
 int send_request_reply (struct dlm_rsb*,struct dlm_lkb*,int) ;
 int setup_stub_lkb (struct dlm_ls*,struct dlm_message*) ;
 int unlock_rsb (struct dlm_rsb*) ;
 int validate_master_nodeid (struct dlm_ls*,struct dlm_rsb*,int) ;

__attribute__((used)) static int receive_request(struct dlm_ls *ls, struct dlm_message *ms)
{
 struct dlm_lkb *lkb;
 struct dlm_rsb *r;
 int from_nodeid;
 int error, namelen = 0;

 from_nodeid = ms->m_header.h_nodeid;

 error = create_lkb(ls, &lkb);
 if (error)
  goto fail;

 receive_flags(lkb, ms);
 lkb->lkb_flags |= DLM_IFL_MSTCPY;
 error = receive_request_args(ls, lkb, ms);
 if (error) {
  __put_lkb(ls, lkb);
  goto fail;
 }







 namelen = receive_extralen(ms);

 error = find_rsb(ls, ms->m_extra, namelen, from_nodeid,
    R_RECEIVE_REQUEST, &r);
 if (error) {
  __put_lkb(ls, lkb);
  goto fail;
 }

 lock_rsb(r);

 if (r->res_master_nodeid != dlm_our_nodeid()) {
  error = validate_master_nodeid(ls, r, from_nodeid);
  if (error) {
   unlock_rsb(r);
   put_rsb(r);
   __put_lkb(ls, lkb);
   goto fail;
  }
 }

 attach_lkb(r, lkb);
 error = do_request(r, lkb);
 send_request_reply(r, lkb, error);
 do_request_effects(r, lkb, error);

 unlock_rsb(r);
 put_rsb(r);

 if (error == -EINPROGRESS)
  error = 0;
 if (error)
  dlm_put_lkb(lkb);
 return 0;

 fail:
 if (error != -ENOTBLK) {
  log_limit(ls, "receive_request %x from %d %d",
     ms->m_lkid, from_nodeid, error);
 }

 if (namelen && error == -EBADR) {
  send_repeat_remove(ls, ms->m_extra, namelen);
  msleep(1000);
 }

 setup_stub_lkb(ls, ms);
 send_request_reply(&ls->ls_stub_rsb, &ls->ls_stub_lkb, error);
 return error;
}
