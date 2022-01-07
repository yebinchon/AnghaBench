
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_rqst {int rq_nvec; struct kvec* rq_iov; } ;
struct TYPE_2__ {int Flags; int SessionId; } ;
struct smb2_logoff_req {TYPE_1__ sync_hdr; } ;
struct kvec {char* iov_base; unsigned int iov_len; } ;
struct cifs_ses {int session_flags; int Suid; scalar_t__ need_reconnect; struct TCP_Server_Info* server; } ;
struct TCP_Server_Info {scalar_t__ sign; } ;


 int CIFS_NO_RSP_BUF ;
 int CIFS_TRANSFORM_REQ ;
 int EIO ;
 int FYI ;
 int SMB2_FLAGS_SIGNED ;
 int SMB2_LOGOFF ;
 int SMB2_SESSION_FLAG_ENCRYPT_DATA ;
 int cifs_dbg (int ,char*,struct cifs_ses*) ;
 int cifs_send_recv (unsigned int const,struct cifs_ses*,struct smb_rqst*,int*,int,struct kvec*) ;
 int cifs_small_buf_release (struct smb2_logoff_req*) ;
 int memset (struct smb_rqst*,int ,int) ;
 int smb2_plain_req_init (int ,int *,void**,unsigned int*) ;

int
SMB2_logoff(const unsigned int xid, struct cifs_ses *ses)
{
 struct smb_rqst rqst;
 struct smb2_logoff_req *req;
 int rc = 0;
 struct TCP_Server_Info *server;
 int flags = 0;
 unsigned int total_len;
 struct kvec iov[1];
 struct kvec rsp_iov;
 int resp_buf_type;

 cifs_dbg(FYI, "disconnect session %p\n", ses);

 if (ses && (ses->server))
  server = ses->server;
 else
  return -EIO;


 if (ses->need_reconnect)
  goto smb2_session_already_dead;

 rc = smb2_plain_req_init(SMB2_LOGOFF, ((void*)0), (void **) &req, &total_len);
 if (rc)
  return rc;


 req->sync_hdr.SessionId = ses->Suid;

 if (ses->session_flags & SMB2_SESSION_FLAG_ENCRYPT_DATA)
  flags |= CIFS_TRANSFORM_REQ;
 else if (server->sign)
  req->sync_hdr.Flags |= SMB2_FLAGS_SIGNED;

 flags |= CIFS_NO_RSP_BUF;

 iov[0].iov_base = (char *)req;
 iov[0].iov_len = total_len;

 memset(&rqst, 0, sizeof(struct smb_rqst));
 rqst.rq_iov = iov;
 rqst.rq_nvec = 1;

 rc = cifs_send_recv(xid, ses, &rqst, &resp_buf_type, flags, &rsp_iov);
 cifs_small_buf_release(req);





smb2_session_already_dead:
 return rc;
}
