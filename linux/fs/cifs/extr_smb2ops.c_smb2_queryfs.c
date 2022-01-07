
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_query_info_rsp {int OutputBufferLength; int OutputBufferOffset; } ;
struct smb2_fs_full_size_info {int dummy; } ;
struct kvec {scalar_t__ iov_base; int member_1; int * member_0; } ;
struct kstatfs {int f_type; } ;
struct cifs_tcon {int dummy; } ;
typedef int __le16 ;


 int CIFS_NO_BUFFER ;
 int FILE_READ_ATTRIBUTES ;
 int FS_FULL_SIZE_INFORMATION ;
 int SMB2_MAGIC_NUMBER ;
 int SMB2_O_INFO_FILESYSTEM ;
 int free_rsp_buf (int,scalar_t__) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int smb2_copy_fs_info_to_kstatfs (struct smb2_fs_full_size_info*,struct kstatfs*) ;
 int smb2_query_info_compound (unsigned int const,struct cifs_tcon*,int *,int ,int ,int ,int,struct kvec*,int*,int *) ;
 int smb2_validate_iov (int,int ,struct kvec*,int) ;

__attribute__((used)) static int
smb2_queryfs(const unsigned int xid, struct cifs_tcon *tcon,
      struct kstatfs *buf)
{
 struct smb2_query_info_rsp *rsp;
 struct smb2_fs_full_size_info *info = ((void*)0);
 __le16 utf16_path = 0;
 struct kvec rsp_iov = {((void*)0), 0};
 int buftype = CIFS_NO_BUFFER;
 int rc;


 rc = smb2_query_info_compound(xid, tcon, &utf16_path,
          FILE_READ_ATTRIBUTES,
          FS_FULL_SIZE_INFORMATION,
          SMB2_O_INFO_FILESYSTEM,
          sizeof(struct smb2_fs_full_size_info),
          &rsp_iov, &buftype, ((void*)0));
 if (rc)
  goto qfs_exit;

 rsp = (struct smb2_query_info_rsp *)rsp_iov.iov_base;
 buf->f_type = SMB2_MAGIC_NUMBER;
 info = (struct smb2_fs_full_size_info *)(
  le16_to_cpu(rsp->OutputBufferOffset) + (char *)rsp);
 rc = smb2_validate_iov(le16_to_cpu(rsp->OutputBufferOffset),
          le32_to_cpu(rsp->OutputBufferLength),
          &rsp_iov,
          sizeof(struct smb2_fs_full_size_info));
 if (!rc)
  smb2_copy_fs_info_to_kstatfs(info, buf);

qfs_exit:
 free_rsp_buf(buftype, rsp_iov.iov_base);
 return rc;
}
