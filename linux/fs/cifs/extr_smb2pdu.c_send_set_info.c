
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;
struct smb_rqst {unsigned int rq_nvec; struct kvec* rq_iov; } ;
struct smb2_set_info_rsp {int dummy; } ;
struct kvec {scalar_t__ iov_base; } ;
struct cifs_tcon {int tid; struct cifs_ses* ses; } ;
struct cifs_ses {int Suid; int server; } ;
typedef int __u32 ;


 int CIFS_TRANSFORM_REQ ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SMB2_SET_INFO_HE ;
 int SMB2_set_info_free (struct smb_rqst*) ;
 int SMB2_set_info_init (struct cifs_tcon*,struct smb_rqst*,int ,int ,int ,scalar_t__,scalar_t__,int ,void**,unsigned int*) ;
 int cifs_send_recv (unsigned int const,struct cifs_ses*,struct smb_rqst*,int*,int,struct kvec*) ;
 int cifs_stats_fail_inc (struct cifs_tcon*,int ) ;
 int free_rsp_buf (int,struct smb2_set_info_rsp*) ;
 int kfree (struct kvec*) ;
 struct kvec* kmalloc_array (unsigned int,int,int ) ;
 int memset (struct smb_rqst*,int ,int) ;
 scalar_t__ smb3_encryption_required (struct cifs_tcon*) ;
 int trace_smb3_set_info_err (unsigned int const,int ,int ,int ,scalar_t__,int ,int) ;

__attribute__((used)) static int
send_set_info(const unsigned int xid, struct cifs_tcon *tcon,
        u64 persistent_fid, u64 volatile_fid, u32 pid, u8 info_class,
        u8 info_type, u32 additional_info, unsigned int num,
  void **data, unsigned int *size)
{
 struct smb_rqst rqst;
 struct smb2_set_info_rsp *rsp = ((void*)0);
 struct kvec *iov;
 struct kvec rsp_iov;
 int rc = 0;
 int resp_buftype;
 struct cifs_ses *ses = tcon->ses;
 int flags = 0;

 if (!ses || !(ses->server))
  return -EIO;

 if (!num)
  return -EINVAL;

 if (smb3_encryption_required(tcon))
  flags |= CIFS_TRANSFORM_REQ;

 iov = kmalloc_array(num, sizeof(struct kvec), GFP_KERNEL);
 if (!iov)
  return -ENOMEM;

 memset(&rqst, 0, sizeof(struct smb_rqst));
 rqst.rq_iov = iov;
 rqst.rq_nvec = num;

 rc = SMB2_set_info_init(tcon, &rqst, persistent_fid, volatile_fid, pid,
    info_class, info_type, additional_info,
    data, size);
 if (rc) {
  kfree(iov);
  return rc;
 }


 rc = cifs_send_recv(xid, ses, &rqst, &resp_buftype, flags,
       &rsp_iov);
 SMB2_set_info_free(&rqst);
 rsp = (struct smb2_set_info_rsp *)rsp_iov.iov_base;

 if (rc != 0) {
  cifs_stats_fail_inc(tcon, SMB2_SET_INFO_HE);
  trace_smb3_set_info_err(xid, persistent_fid, tcon->tid,
    ses->Suid, info_class, (__u32)info_type, rc);
 }

 free_rsp_buf(resp_buftype, rsp);
 kfree(iov);
 return rc;
}
