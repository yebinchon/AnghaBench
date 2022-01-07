
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int val ;
struct socket {int dummy; } ;
struct smb_rqst {int rq_nvec; unsigned int rq_npages; int * rq_pages; struct kvec* rq_iov; } ;
struct msghdr {int msg_iter; } ;
struct kvec {int iov_len; int * iov_base; } ;
struct bio_vec {int bv_len; int bv_offset; int bv_page; } ;
struct TCP_Server_Info {int hostname; int CurrentMid; int tcpStatus; TYPE_1__* vals; scalar_t__ smbd_conn; struct socket* ssocket; } ;
typedef int sigset_t ;
typedef int __be32 ;
struct TYPE_2__ {scalar_t__ header_preamble_size; } ;


 int CifsNeedReconnect ;
 int EAGAIN ;
 int EINTR ;
 int FYI ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int SOL_TCP ;
 int TCP_CORK ;
 int VFS ;
 int WRITE ;
 int cifs_dbg (int ,char*,...) ;
 scalar_t__ cifs_rdma_enabled (struct TCP_Server_Info*) ;
 int cifs_server_dbg (int ,char*,int) ;
 int cpu_to_be32 (unsigned int) ;
 int current ;
 int dump_smb (int *,int) ;
 int iov_iter_bvec (int *,int ,struct bio_vec*,int,int ) ;
 int iov_iter_kvec (int *,int ,struct kvec*,int,size_t) ;
 int kernel_setsockopt (struct socket*,int ,int ,char*,int) ;
 int rqst_page_get_length (struct smb_rqst*,unsigned int,int *,int *) ;
 int sigfillset (int *) ;
 scalar_t__ signal_pending (int ) ;
 int sigprocmask (int ,int *,int *) ;
 scalar_t__ smb_rqst_len (struct TCP_Server_Info*,struct smb_rqst*) ;
 int smb_send_kvec (struct TCP_Server_Info*,struct msghdr*,size_t*) ;
 int smbd_send (struct TCP_Server_Info*,int,struct smb_rqst*) ;
 int trace_smb3_partial_send_reconnect (int ,int ) ;

__attribute__((used)) static int
__smb_send_rqst(struct TCP_Server_Info *server, int num_rqst,
  struct smb_rqst *rqst)
{
 int rc = 0;
 struct kvec *iov;
 int n_vec;
 unsigned int send_length = 0;
 unsigned int i, j;
 sigset_t mask, oldmask;
 size_t total_len = 0, sent, size;
 struct socket *ssocket = server->ssocket;
 struct msghdr smb_msg;
 int val = 1;
 __be32 rfc1002_marker;

 if (cifs_rdma_enabled(server) && server->smbd_conn) {
  rc = smbd_send(server, num_rqst, rqst);
  goto smbd_done;
 }

 if (ssocket == ((void*)0))
  return -EAGAIN;

 if (signal_pending(current)) {
  cifs_dbg(FYI, "signal is pending before sending any data\n");
  return -EINTR;
 }


 kernel_setsockopt(ssocket, SOL_TCP, TCP_CORK,
    (char *)&val, sizeof(val));

 for (j = 0; j < num_rqst; j++)
  send_length += smb_rqst_len(server, &rqst[j]);
 rfc1002_marker = cpu_to_be32(send_length);
 sigfillset(&mask);
 sigprocmask(SIG_BLOCK, &mask, &oldmask);


 if (server->vals->header_preamble_size == 0) {
  struct kvec hiov = {
   .iov_base = &rfc1002_marker,
   .iov_len = 4
  };
  iov_iter_kvec(&smb_msg.msg_iter, WRITE, &hiov, 1, 4);
  rc = smb_send_kvec(server, &smb_msg, &sent);
  if (rc < 0)
   goto unmask;

  total_len += sent;
  send_length += 4;
 }

 cifs_dbg(FYI, "Sending smb: smb_len=%u\n", send_length);

 for (j = 0; j < num_rqst; j++) {
  iov = rqst[j].rq_iov;
  n_vec = rqst[j].rq_nvec;

  size = 0;
  for (i = 0; i < n_vec; i++) {
   dump_smb(iov[i].iov_base, iov[i].iov_len);
   size += iov[i].iov_len;
  }

  iov_iter_kvec(&smb_msg.msg_iter, WRITE, iov, n_vec, size);

  rc = smb_send_kvec(server, &smb_msg, &sent);
  if (rc < 0)
   goto unmask;

  total_len += sent;


  for (i = 0; i < rqst[j].rq_npages; i++) {
   struct bio_vec bvec;

   bvec.bv_page = rqst[j].rq_pages[i];
   rqst_page_get_length(&rqst[j], i, &bvec.bv_len,
          &bvec.bv_offset);

   iov_iter_bvec(&smb_msg.msg_iter, WRITE,
          &bvec, 1, bvec.bv_len);
   rc = smb_send_kvec(server, &smb_msg, &sent);
   if (rc < 0)
    break;

   total_len += sent;
  }
 }

unmask:
 sigprocmask(SIG_SETMASK, &oldmask, ((void*)0));
 if (signal_pending(current) && (total_len != send_length)) {
  cifs_dbg(FYI, "signal is pending after attempt to send\n");
  rc = -EINTR;
 }


 val = 0;
 kernel_setsockopt(ssocket, SOL_TCP, TCP_CORK,
    (char *)&val, sizeof(val));

 if ((total_len > 0) && (total_len != send_length)) {
  cifs_dbg(FYI, "partial send (wanted=%u sent=%zu): terminating session\n",
    send_length, total_len);





  server->tcpStatus = CifsNeedReconnect;
  trace_smb3_partial_send_reconnect(server->CurrentMid,
        server->hostname);
 }
smbd_done:
 if (rc < 0 && rc != -EINTR)
  cifs_server_dbg(VFS, "Error %d sending data on socket to server\n",
    rc);
 else if (rc > 0)
  rc = 0;

 return rc;
}
