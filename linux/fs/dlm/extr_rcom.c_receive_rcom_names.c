
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int h_nodeid; int h_length; } ;
struct dlm_rcom {int rc_buf; int rc_seq; int rc_seq_reply; int rc_id; TYPE_1__ rc_header; } ;
struct dlm_mhandle {int dummy; } ;
struct dlm_ls {int dummy; } ;
struct TYPE_4__ {int ci_buffer_size; } ;


 int DLM_RCOM_NAMES_REPLY ;
 int create_rcom (struct dlm_ls*,int,int ,int,struct dlm_rcom**,struct dlm_mhandle**) ;
 TYPE_2__ dlm_config ;
 int dlm_copy_master_names (struct dlm_ls*,int ,int,int ,int,int) ;
 int send_rcom (struct dlm_ls*,struct dlm_mhandle*,struct dlm_rcom*) ;

__attribute__((used)) static void receive_rcom_names(struct dlm_ls *ls, struct dlm_rcom *rc_in)
{
 struct dlm_rcom *rc;
 struct dlm_mhandle *mh;
 int error, inlen, outlen, nodeid;

 nodeid = rc_in->rc_header.h_nodeid;
 inlen = rc_in->rc_header.h_length - sizeof(struct dlm_rcom);
 outlen = dlm_config.ci_buffer_size - sizeof(struct dlm_rcom);

 error = create_rcom(ls, nodeid, DLM_RCOM_NAMES_REPLY, outlen, &rc, &mh);
 if (error)
  return;
 rc->rc_id = rc_in->rc_id;
 rc->rc_seq_reply = rc_in->rc_seq;

 dlm_copy_master_names(ls, rc_in->rc_buf, inlen, rc->rc_buf, outlen,
         nodeid);
 send_rcom(ls, mh, rc);
}
