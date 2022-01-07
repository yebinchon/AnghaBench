
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_rqst {int rq_nvec; struct kvec* rq_iov; } ;
struct smb_hdr {scalar_t__ Command; int smb_buf_length; } ;
struct mid_q_entry {scalar_t__ mid_state; int resp_buf; int callback; int sequence_number; } ;
struct kvec {unsigned int iov_len; struct smb_hdr* iov_base; } ;
struct cifs_tcon {struct cifs_ses* ses; } ;
struct cifs_ses {struct TCP_Server_Info* server; } ;
struct TCP_Server_Info {scalar_t__ tcpStatus; int sequence_number; int response_q; int srv_mutex; } ;


 int CIFSMaxBufSize ;
 int CIFS_BLOCKING_OP ;
 scalar_t__ CifsExiting ;
 scalar_t__ CifsGood ;
 scalar_t__ CifsNew ;
 int DeleteMidQEntry ;
 int EACCES ;
 int EIO ;
 int ENOENT ;
 int ENOLCK ;
 int ERESTARTSYS ;
 int GlobalMid_Lock ;
 int MAX_CIFS_HDR_SIZE ;
 scalar_t__ MID_REQUEST_SUBMITTED ;
 scalar_t__ MID_RESPONSE_RECEIVED ;
 scalar_t__ SMB_COM_TRANSACTION2 ;
 int VFS ;
 int allocate_mid (struct cifs_ses*,struct smb_hdr*,struct mid_q_entry**) ;
 unsigned int be32_to_cpu (int ) ;
 int cifs_check_receive (struct mid_q_entry*,struct TCP_Server_Info*,int ) ;
 int cifs_dbg (int ,char*) ;
 int cifs_delete_mid (struct mid_q_entry*) ;
 int cifs_in_send_dec (struct TCP_Server_Info*) ;
 int cifs_in_send_inc (struct TCP_Server_Info*) ;
 int cifs_save_when_sent (struct mid_q_entry*) ;
 int cifs_sign_smb (struct smb_hdr*,struct TCP_Server_Info*,int *) ;
 int cifs_sync_mid_result (struct mid_q_entry*,struct TCP_Server_Info*) ;
 int cifs_tcon_dbg (int ,char*,...) ;
 int get_rfc1002_length (int ) ;
 int memcpy (struct smb_hdr*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int send_cancel (struct TCP_Server_Info*,struct smb_rqst*,struct mid_q_entry*) ;
 int send_lock_cancel (unsigned int const,struct cifs_tcon*,struct smb_hdr*,struct smb_hdr*) ;
 int smb_send (struct TCP_Server_Info*,struct smb_hdr*,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_event_interruptible (int ,int) ;
 int wait_for_free_request (struct TCP_Server_Info*,int ,unsigned int*) ;
 int wait_for_response (struct TCP_Server_Info*,struct mid_q_entry*) ;

int
SendReceiveBlockingLock(const unsigned int xid, struct cifs_tcon *tcon,
     struct smb_hdr *in_buf, struct smb_hdr *out_buf,
     int *pbytes_returned)
{
 int rc = 0;
 int rstart = 0;
 struct mid_q_entry *midQ;
 struct cifs_ses *ses;
 unsigned int len = be32_to_cpu(in_buf->smb_buf_length);
 struct kvec iov = { .iov_base = in_buf, .iov_len = len };
 struct smb_rqst rqst = { .rq_iov = &iov, .rq_nvec = 1 };
 unsigned int instance;
 struct TCP_Server_Info *server;

 if (tcon == ((void*)0) || tcon->ses == ((void*)0)) {
  cifs_dbg(VFS, "Null smb session\n");
  return -EIO;
 }
 ses = tcon->ses;
 server = ses->server;

 if (server == ((void*)0)) {
  cifs_dbg(VFS, "Null tcp session\n");
  return -EIO;
 }

 if (server->tcpStatus == CifsExiting)
  return -ENOENT;





 if (len > CIFSMaxBufSize + MAX_CIFS_HDR_SIZE - 4) {
  cifs_tcon_dbg(VFS, "Illegal length, greater than maximum frame, %d\n",
    len);
  return -EIO;
 }

 rc = wait_for_free_request(server, CIFS_BLOCKING_OP, &instance);
 if (rc)
  return rc;





 mutex_lock(&server->srv_mutex);

 rc = allocate_mid(ses, in_buf, &midQ);
 if (rc) {
  mutex_unlock(&server->srv_mutex);
  return rc;
 }

 rc = cifs_sign_smb(in_buf, server, &midQ->sequence_number);
 if (rc) {
  cifs_delete_mid(midQ);
  mutex_unlock(&server->srv_mutex);
  return rc;
 }

 midQ->mid_state = MID_REQUEST_SUBMITTED;
 cifs_in_send_inc(server);
 rc = smb_send(server, in_buf, len);
 cifs_in_send_dec(server);
 cifs_save_when_sent(midQ);

 if (rc < 0)
  server->sequence_number -= 2;

 mutex_unlock(&server->srv_mutex);

 if (rc < 0) {
  cifs_delete_mid(midQ);
  return rc;
 }


 rc = wait_event_interruptible(server->response_q,
  (!(midQ->mid_state == MID_REQUEST_SUBMITTED)) ||
  ((server->tcpStatus != CifsGood) &&
   (server->tcpStatus != CifsNew)));


 if ((rc == -ERESTARTSYS) &&
  (midQ->mid_state == MID_REQUEST_SUBMITTED) &&
  ((server->tcpStatus == CifsGood) ||
   (server->tcpStatus == CifsNew))) {

  if (in_buf->Command == SMB_COM_TRANSACTION2) {


   rc = send_cancel(server, &rqst, midQ);
   if (rc) {
    cifs_delete_mid(midQ);
    return rc;
   }
  } else {



   rc = send_lock_cancel(xid, tcon, in_buf, out_buf);



   if (rc && rc != -ENOLCK) {
    cifs_delete_mid(midQ);
    return rc;
   }
  }

  rc = wait_for_response(server, midQ);
  if (rc) {
   send_cancel(server, &rqst, midQ);
   spin_lock(&GlobalMid_Lock);
   if (midQ->mid_state == MID_REQUEST_SUBMITTED) {

    midQ->callback = DeleteMidQEntry;
    spin_unlock(&GlobalMid_Lock);
    return rc;
   }
   spin_unlock(&GlobalMid_Lock);
  }


  rstart = 1;
 }

 rc = cifs_sync_mid_result(midQ, server);
 if (rc != 0)
  return rc;


 if (out_buf == ((void*)0) || midQ->mid_state != MID_RESPONSE_RECEIVED) {
  rc = -EIO;
  cifs_tcon_dbg(VFS, "Bad MID state?\n");
  goto out;
 }

 *pbytes_returned = get_rfc1002_length(midQ->resp_buf);
 memcpy(out_buf, midQ->resp_buf, *pbytes_returned + 4);
 rc = cifs_check_receive(midQ, server, 0);
out:
 cifs_delete_mid(midQ);
 if (rstart && rc == -EACCES)
  return -ERESTARTSYS;
 return rc;
}
