
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct rcom_status {int rs_flags; } ;
struct rcom_slot {int dummy; } ;
struct rcom_config {int dummy; } ;
struct TYPE_2__ {int h_nodeid; } ;
struct dlm_rcom {scalar_t__ rc_buf; scalar_t__ rc_result; int rc_seq; int rc_seq_reply; int rc_id; TYPE_1__ rc_header; } ;
struct dlm_mhandle {int dummy; } ;
struct dlm_ls {int ls_num_slots; int ls_recover_lock; scalar_t__ ls_recover_status; } ;


 int DLM_RCOM_STATUS_REPLY ;
 int DLM_RSF_NEED_SLOTS ;
 int create_rcom (struct dlm_ls*,int,int ,int,struct dlm_rcom**,struct dlm_mhandle**) ;
 scalar_t__ dlm_recover_status (struct dlm_ls*) ;
 int dlm_slots_copy_out (struct dlm_ls*,struct dlm_rcom*) ;
 int dlm_slots_version (TYPE_1__*) ;
 int le32_to_cpu (int ) ;
 int log_debug (struct dlm_ls*,char*,int,int) ;
 int send_rcom (struct dlm_ls*,struct dlm_mhandle*,struct dlm_rcom*) ;
 int set_rcom_config (struct dlm_ls*,struct rcom_config*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void receive_rcom_status(struct dlm_ls *ls, struct dlm_rcom *rc_in)
{
 struct dlm_rcom *rc;
 struct dlm_mhandle *mh;
 struct rcom_status *rs;
 uint32_t status;
 int nodeid = rc_in->rc_header.h_nodeid;
 int len = sizeof(struct rcom_config);
 int num_slots = 0;
 int error;

 if (!dlm_slots_version(&rc_in->rc_header)) {
  status = dlm_recover_status(ls);
  goto do_create;
 }

 rs = (struct rcom_status *)rc_in->rc_buf;

 if (!(le32_to_cpu(rs->rs_flags) & DLM_RSF_NEED_SLOTS)) {
  status = dlm_recover_status(ls);
  goto do_create;
 }

 spin_lock(&ls->ls_recover_lock);
 status = ls->ls_recover_status;
 num_slots = ls->ls_num_slots;
 spin_unlock(&ls->ls_recover_lock);
 len += num_slots * sizeof(struct rcom_slot);

 do_create:
 error = create_rcom(ls, nodeid, DLM_RCOM_STATUS_REPLY,
       len, &rc, &mh);
 if (error)
  return;

 rc->rc_id = rc_in->rc_id;
 rc->rc_seq_reply = rc_in->rc_seq;
 rc->rc_result = status;

 set_rcom_config(ls, (struct rcom_config *)rc->rc_buf, num_slots);

 if (!num_slots)
  goto do_send;

 spin_lock(&ls->ls_recover_lock);
 if (ls->ls_num_slots != num_slots) {
  spin_unlock(&ls->ls_recover_lock);
  log_debug(ls, "receive_rcom_status num_slots %d to %d",
     num_slots, ls->ls_num_slots);
  rc->rc_result = 0;
  set_rcom_config(ls, (struct rcom_config *)rc->rc_buf, 0);
  goto do_send;
 }

 dlm_slots_copy_out(ls, rc);
 spin_unlock(&ls->ls_recover_lock);

 do_send:
 send_rcom(ls, mh, rc);
}
