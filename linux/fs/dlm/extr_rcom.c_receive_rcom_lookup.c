
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int h_nodeid; int h_length; } ;
struct dlm_rcom {int rc_id; int rc_result; int rc_seq; int rc_seq_reply; int rc_buf; TYPE_1__ rc_header; } ;
struct dlm_mhandle {int dummy; } ;
struct dlm_ls {int dummy; } ;


 int DLM_LU_RECOVER_MASTER ;
 int DLM_RCOM_LOOKUP_REPLY ;
 int create_rcom (struct dlm_ls*,int,int ,int ,struct dlm_rcom**,struct dlm_mhandle**) ;
 int dlm_dump_rsb_name (struct dlm_ls*,int ,int) ;
 int dlm_master_lookup (struct dlm_ls*,int,int ,int,int ,int*,int *) ;
 int log_error (struct dlm_ls*,char*,int) ;
 int send_rcom (struct dlm_ls*,struct dlm_mhandle*,struct dlm_rcom*) ;

__attribute__((used)) static void receive_rcom_lookup(struct dlm_ls *ls, struct dlm_rcom *rc_in)
{
 struct dlm_rcom *rc;
 struct dlm_mhandle *mh;
 int error, ret_nodeid, nodeid = rc_in->rc_header.h_nodeid;
 int len = rc_in->rc_header.h_length - sizeof(struct dlm_rcom);

 error = create_rcom(ls, nodeid, DLM_RCOM_LOOKUP_REPLY, 0, &rc, &mh);
 if (error)
  return;


 if (rc_in->rc_id == 0xFFFFFFFF) {
  log_error(ls, "receive_rcom_lookup dump from %d", nodeid);
  dlm_dump_rsb_name(ls, rc_in->rc_buf, len);
  return;
 }

 error = dlm_master_lookup(ls, nodeid, rc_in->rc_buf, len,
      DLM_LU_RECOVER_MASTER, &ret_nodeid, ((void*)0));
 if (error)
  ret_nodeid = error;
 rc->rc_result = ret_nodeid;
 rc->rc_id = rc_in->rc_id;
 rc->rc_seq_reply = rc_in->rc_seq;

 send_rcom(ls, mh, rc);
}
