
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct smb_rqst {int rq_nvec; struct kvec* rq_iov; } ;
struct smb2_query_info_rsp {int OutputBufferLength; int OutputBufferOffset; } ;
struct kvec {scalar_t__ iov_base; } ;
struct kstatfs {int dummy; } ;
struct cifs_tcon {struct cifs_ses* ses; } ;
struct cifs_ses {int dummy; } ;
typedef int FILE_SYSTEM_POSIX_INFO ;


 int CIFS_TRANSFORM_REQ ;
 int FS_POSIX_INFORMATION ;
 int SMB2_QUERY_INFO_HE ;
 int build_qfs_info_req (struct kvec*,struct cifs_tcon*,int ,int,int ,int ) ;
 int cifs_send_recv (unsigned int const,struct cifs_ses*,struct smb_rqst*,int*,int,struct kvec*) ;
 int cifs_small_buf_release (scalar_t__) ;
 int cifs_stats_fail_inc (struct cifs_tcon*,int ) ;
 int copy_posix_fs_info_to_kstatfs (int *,struct kstatfs*) ;
 int free_rsp_buf (int,scalar_t__) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memset (struct smb_rqst*,int ,int) ;
 int smb2_validate_iov (int,int ,struct kvec*,int) ;
 scalar_t__ smb3_encryption_required (struct cifs_tcon*) ;

int
SMB311_posix_qfs_info(const unsigned int xid, struct cifs_tcon *tcon,
       u64 persistent_fid, u64 volatile_fid, struct kstatfs *fsdata)
{
 struct smb_rqst rqst;
 struct smb2_query_info_rsp *rsp = ((void*)0);
 struct kvec iov;
 struct kvec rsp_iov;
 int rc = 0;
 int resp_buftype;
 struct cifs_ses *ses = tcon->ses;
 FILE_SYSTEM_POSIX_INFO *info = ((void*)0);
 int flags = 0;

 rc = build_qfs_info_req(&iov, tcon, FS_POSIX_INFORMATION,
    sizeof(FILE_SYSTEM_POSIX_INFO),
    persistent_fid, volatile_fid);
 if (rc)
  return rc;

 if (smb3_encryption_required(tcon))
  flags |= CIFS_TRANSFORM_REQ;

 memset(&rqst, 0, sizeof(struct smb_rqst));
 rqst.rq_iov = &iov;
 rqst.rq_nvec = 1;

 rc = cifs_send_recv(xid, ses, &rqst, &resp_buftype, flags, &rsp_iov);
 cifs_small_buf_release(iov.iov_base);
 if (rc) {
  cifs_stats_fail_inc(tcon, SMB2_QUERY_INFO_HE);
  goto posix_qfsinf_exit;
 }
 rsp = (struct smb2_query_info_rsp *)rsp_iov.iov_base;

 info = (FILE_SYSTEM_POSIX_INFO *)(
  le16_to_cpu(rsp->OutputBufferOffset) + (char *)rsp);
 rc = smb2_validate_iov(le16_to_cpu(rsp->OutputBufferOffset),
          le32_to_cpu(rsp->OutputBufferLength), &rsp_iov,
          sizeof(FILE_SYSTEM_POSIX_INFO));
 if (!rc)
  copy_posix_fs_info_to_kstatfs(info, fsdata);

posix_qfsinf_exit:
 free_rsp_buf(resp_buftype, rsp_iov.iov_base);
 return rc;
}
