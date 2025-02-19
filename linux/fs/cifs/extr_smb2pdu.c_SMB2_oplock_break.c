
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct smb_rqst {int rq_nvec; struct kvec* rq_iov; } ;
struct TYPE_2__ {int CreditRequest; } ;
struct smb2_oplock_break {TYPE_1__ sync_hdr; int OplockLevel; int PersistentFid; int VolatileFid; } ;
struct kvec {char* iov_base; unsigned int iov_len; } ;
struct cifs_tcon {struct cifs_ses* ses; } ;
struct cifs_ses {int dummy; } ;
typedef int __u8 ;


 int CIFS_NO_RSP_BUF ;
 int CIFS_OBREAK_OP ;
 int CIFS_TRANSFORM_REQ ;
 int FYI ;
 int SMB2_OPLOCK_BREAK ;
 int SMB2_OPLOCK_BREAK_HE ;
 int cifs_dbg (int ,char*,...) ;
 int cifs_send_recv (unsigned int const,struct cifs_ses*,struct smb_rqst*,int*,int,struct kvec*) ;
 int cifs_small_buf_release (struct smb2_oplock_break*) ;
 int cifs_stats_fail_inc (struct cifs_tcon*,int ) ;
 int cpu_to_le16 (int) ;
 int memset (struct smb_rqst*,int ,int) ;
 int smb2_plain_req_init (int ,struct cifs_tcon*,void**,unsigned int*) ;
 scalar_t__ smb3_encryption_required (struct cifs_tcon*) ;

int
SMB2_oplock_break(const unsigned int xid, struct cifs_tcon *tcon,
    const u64 persistent_fid, const u64 volatile_fid,
    __u8 oplock_level)
{
 struct smb_rqst rqst;
 int rc;
 struct smb2_oplock_break *req = ((void*)0);
 struct cifs_ses *ses = tcon->ses;
 int flags = CIFS_OBREAK_OP;
 unsigned int total_len;
 struct kvec iov[1];
 struct kvec rsp_iov;
 int resp_buf_type;

 cifs_dbg(FYI, "SMB2_oplock_break\n");
 rc = smb2_plain_req_init(SMB2_OPLOCK_BREAK, tcon, (void **) &req,
        &total_len);
 if (rc)
  return rc;

 if (smb3_encryption_required(tcon))
  flags |= CIFS_TRANSFORM_REQ;

 req->VolatileFid = volatile_fid;
 req->PersistentFid = persistent_fid;
 req->OplockLevel = oplock_level;
 req->sync_hdr.CreditRequest = cpu_to_le16(1);

 flags |= CIFS_NO_RSP_BUF;

 iov[0].iov_base = (char *)req;
 iov[0].iov_len = total_len;

 memset(&rqst, 0, sizeof(struct smb_rqst));
 rqst.rq_iov = iov;
 rqst.rq_nvec = 1;

 rc = cifs_send_recv(xid, ses, &rqst, &resp_buf_type, flags, &rsp_iov);
 cifs_small_buf_release(req);

 if (rc) {
  cifs_stats_fail_inc(tcon, SMB2_OPLOCK_BREAK_HE);
  cifs_dbg(FYI, "Send error in Oplock Break = %d\n", rc);
 }

 return rc;
}
