
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CreditRequest; scalar_t__ SessionId; } ;
struct smb2_sess_setup_req {scalar_t__ Channel; scalar_t__ Capabilities; scalar_t__ SecurityMode; TYPE_1__ sync_hdr; scalar_t__ Flags; int PreviousSessionId; } ;
struct cifs_ses {struct TCP_Server_Info* server; } ;
struct TCP_Server_Info {scalar_t__ sign; } ;
struct SMB2_sess_data {int buf0_type; TYPE_2__* iov; int previous_session; struct cifs_ses* ses; } ;
struct TYPE_4__ {char* iov_base; unsigned int iov_len; } ;


 int CIFSSEC_MAY_SIGN ;
 int CIFS_SMALL_BUFFER ;
 int SMB2_GLOBAL_CAP_DFS ;
 scalar_t__ SMB2_NEGOTIATE_SIGNING_ENABLED ;
 scalar_t__ SMB2_NEGOTIATE_SIGNING_REQUIRED ;
 int SMB2_SESSION_SETUP ;
 int cpu_to_le16 (int) ;
 scalar_t__ cpu_to_le32 (int ) ;
 int global_secflags ;
 int smb2_plain_req_init (int ,int *,void**,unsigned int*) ;

__attribute__((used)) static int
SMB2_sess_alloc_buffer(struct SMB2_sess_data *sess_data)
{
 int rc;
 struct cifs_ses *ses = sess_data->ses;
 struct smb2_sess_setup_req *req;
 struct TCP_Server_Info *server = ses->server;
 unsigned int total_len;

 rc = smb2_plain_req_init(SMB2_SESSION_SETUP, ((void*)0), (void **) &req,
        &total_len);
 if (rc)
  return rc;


 req->sync_hdr.SessionId = 0;


 req->PreviousSessionId = sess_data->previous_session;

 req->Flags = 0;


 req->sync_hdr.CreditRequest = cpu_to_le16(130);


 if (server->sign)
  req->SecurityMode = SMB2_NEGOTIATE_SIGNING_REQUIRED;
 else if (global_secflags & CIFSSEC_MAY_SIGN)
  req->SecurityMode = SMB2_NEGOTIATE_SIGNING_ENABLED;
 else
  req->SecurityMode = 0;




 req->Capabilities = 0;


 req->Channel = 0;

 sess_data->iov[0].iov_base = (char *)req;

 sess_data->iov[0].iov_len = total_len - 1;




 sess_data->buf0_type = CIFS_SMALL_BUFFER;

 return 0;
}
