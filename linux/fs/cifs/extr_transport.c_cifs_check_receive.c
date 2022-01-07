
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_rqst {int rq_nvec; struct kvec* rq_iov; } ;
struct mid_q_entry {char* resp_buf; int sequence_number; } ;
struct kvec {char* iov_base; int iov_len; } ;
struct TCP_Server_Info {scalar_t__ sign; } ;


 int VFS ;
 int cifs_server_dbg (int ,char*,int) ;
 int cifs_verify_signature (struct smb_rqst*,struct TCP_Server_Info*,int ) ;
 int dump_smb (char*,int ) ;
 int get_rfc1002_length (char*) ;
 int map_smb_to_linux_error (char*,int) ;
 int min_t (int ,int,unsigned int) ;
 int u32 ;

int
cifs_check_receive(struct mid_q_entry *mid, struct TCP_Server_Info *server,
     bool log_error)
{
 unsigned int len = get_rfc1002_length(mid->resp_buf) + 4;

 dump_smb(mid->resp_buf, min_t(u32, 92, len));


 if (server->sign) {
  struct kvec iov[2];
  int rc = 0;
  struct smb_rqst rqst = { .rq_iov = iov,
      .rq_nvec = 2 };

  iov[0].iov_base = mid->resp_buf;
  iov[0].iov_len = 4;
  iov[1].iov_base = (char *)mid->resp_buf + 4;
  iov[1].iov_len = len - 4;

  rc = cifs_verify_signature(&rqst, server,
        mid->sequence_number);
  if (rc)
   cifs_server_dbg(VFS, "SMB signature verification returned error = %d\n",
     rc);
 }


 return map_smb_to_linux_error(mid->resp_buf, log_error);
}
