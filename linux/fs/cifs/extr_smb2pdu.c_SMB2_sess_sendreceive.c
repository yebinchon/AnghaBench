
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_rqst {int rq_nvec; TYPE_1__* rq_iov; } ;
struct smb2_sess_setup_req {void* SecurityBufferLength; void* SecurityBufferOffset; } ;
struct kvec {int member_1; int * member_0; } ;
struct SMB2_sess_data {TYPE_1__* iov; int buf0_type; int ses; int xid; } ;
struct TYPE_2__ {int iov_len; struct smb2_sess_setup_req* iov_base; } ;


 int CIFS_LOG_ERROR ;
 int CIFS_NEG_OP ;
 int cifs_send_recv (int ,int ,struct smb_rqst*,int *,int,struct kvec*) ;
 int cifs_small_buf_release (struct smb2_sess_setup_req*) ;
 void* cpu_to_le16 (int) ;
 int memcpy (TYPE_1__*,struct kvec*,int) ;
 int memset (struct smb_rqst*,int ,int) ;

__attribute__((used)) static int
SMB2_sess_sendreceive(struct SMB2_sess_data *sess_data)
{
 int rc;
 struct smb_rqst rqst;
 struct smb2_sess_setup_req *req = sess_data->iov[0].iov_base;
 struct kvec rsp_iov = { ((void*)0), 0 };


 req->SecurityBufferOffset =
  cpu_to_le16(sizeof(struct smb2_sess_setup_req) - 1 );
 req->SecurityBufferLength = cpu_to_le16(sess_data->iov[1].iov_len);

 memset(&rqst, 0, sizeof(struct smb_rqst));
 rqst.rq_iov = sess_data->iov;
 rqst.rq_nvec = 2;


 rc = cifs_send_recv(sess_data->xid, sess_data->ses,
       &rqst,
       &sess_data->buf0_type,
       CIFS_LOG_ERROR | CIFS_NEG_OP, &rsp_iov);
 cifs_small_buf_release(sess_data->iov[0].iov_base);
 memcpy(&sess_data->iov[0], &rsp_iov, sizeof(struct kvec));

 return rc;
}
