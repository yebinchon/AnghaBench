
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_rqst {int rq_nvec; struct kvec* rq_iov; } ;
struct TYPE_2__ {int CreditRequest; } ;
struct smb2_echo_req {TYPE_1__ sync_hdr; } ;
struct kvec {unsigned int iov_len; char* iov_base; } ;
struct TCP_Server_Info {scalar_t__ tcpStatus; int reconnect; } ;


 int CIFS_ECHO_OP ;
 scalar_t__ CifsNeedNegotiate ;
 int FYI ;
 int SMB2_ECHO ;
 int cifs_call_async (struct TCP_Server_Info*,struct smb_rqst*,int *,int ,int *,struct TCP_Server_Info*,int ,int *) ;
 int cifs_dbg (int ,char*,...) ;
 int cifs_small_buf_release (struct smb2_echo_req*) ;
 int cifsiod_wq ;
 int cpu_to_le16 (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int smb2_echo_callback ;
 int smb2_plain_req_init (int ,int *,void**,unsigned int*) ;

int
SMB2_echo(struct TCP_Server_Info *server)
{
 struct smb2_echo_req *req;
 int rc = 0;
 struct kvec iov[1];
 struct smb_rqst rqst = { .rq_iov = iov,
     .rq_nvec = 1 };
 unsigned int total_len;

 cifs_dbg(FYI, "In echo request\n");

 if (server->tcpStatus == CifsNeedNegotiate) {

  queue_delayed_work(cifsiod_wq, &server->reconnect, 0);
  return rc;
 }

 rc = smb2_plain_req_init(SMB2_ECHO, ((void*)0), (void **)&req, &total_len);
 if (rc)
  return rc;

 req->sync_hdr.CreditRequest = cpu_to_le16(1);

 iov[0].iov_len = total_len;
 iov[0].iov_base = (char *)req;

 rc = cifs_call_async(server, &rqst, ((void*)0), smb2_echo_callback, ((void*)0),
        server, CIFS_ECHO_OP, ((void*)0));
 if (rc)
  cifs_dbg(FYI, "Echo request failed: %d\n", rc);

 cifs_small_buf_release(req);
 return rc;
}
