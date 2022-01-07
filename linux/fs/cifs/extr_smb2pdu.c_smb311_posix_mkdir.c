
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef int umode_t ;
struct smb_rqst {unsigned int rq_nvec; struct kvec* rq_iov; } ;
struct smb2_create_rsp {int VolatileFileId; int PersistentFileId; } ;
struct TYPE_2__ {int Flags; } ;
struct smb2_create_req {int RequestedOplockLevel; void* NameLength; TYPE_1__ sync_hdr; void* NameOffset; void* CreateOptions; void* CreateDisposition; int ShareAccess; void* FileAttributes; void* DesiredAccess; int ImpersonationLevel; } ;
struct kvec {char* iov_base; unsigned int iov_len; int member_1; int * member_0; } ;
struct inode {int dummy; } ;
struct cifs_tcon {int share_flags; int tid; scalar_t__ posix_extensions; int treeName; struct cifs_ses* ses; } ;
struct cifs_ses {int Suid; int server; } ;
struct cifs_sb_info {int dummy; } ;
typedef int __u32 ;
typedef char __le16 ;


 int CIFS_TRANSFORM_REQ ;
 int CREATE_NOT_FILE ;
 int EIO ;
 int ENOMEM ;
 int FILE_CREATE ;
 int FILE_SHARE_ALL_LE ;
 int FILE_WRITE_ATTRIBUTES ;
 int FYI ;
 int GFP_KERNEL ;
 int IL_IMPERSONATION ;
 int PATH_MAX ;
 int SHI1005_FLAGS_DFS ;
 int SMB2_CREATE ;
 int SMB2_CREATE_HE ;
 int SMB2_FLAGS_DFS_OPERATIONS ;
 int SMB2_OPLOCK_LEVEL_NONE ;
 int SMB2_close (unsigned int const,struct cifs_tcon*,int ,int ) ;
 int UniStrnlen (int *,int ) ;
 int add_posix_context (struct kvec*,unsigned int*,int ) ;
 int alloc_path_with_tree_prefix (char**,int*,int*,int ,char*) ;
 char* cifs_convert_path_to_utf16 (char const*,struct cifs_sb_info*) ;
 int cifs_dbg (int ,char*) ;
 int cifs_send_recv (unsigned int const,struct cifs_ses*,struct smb_rqst*,int*,int,struct kvec*) ;
 int cifs_small_buf_release (struct smb2_create_req*) ;
 int cifs_stats_fail_inc (struct cifs_tcon*,int ) ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int ) ;
 int free_rsp_buf (int,struct smb2_create_rsp*) ;
 int kfree (char*) ;
 char* kzalloc (int,int ) ;
 int memcpy (char*,char const*,int) ;
 int memset (struct smb_rqst*,int ,int) ;
 int roundup (int,int) ;
 int smb2_plain_req_init (int ,struct cifs_tcon*,void**,unsigned int*) ;
 scalar_t__ smb3_encryption_required (struct cifs_tcon*) ;
 int trace_smb3_posix_mkdir_done (unsigned int const,int ,int ,int ,int ,int ) ;
 int trace_smb3_posix_mkdir_enter (unsigned int const,int ,int ,int ,int ) ;
 int trace_smb3_posix_mkdir_err (unsigned int const,int ,int ,int ,int ,int) ;

int smb311_posix_mkdir(const unsigned int xid, struct inode *inode,
          umode_t mode, struct cifs_tcon *tcon,
          const char *full_path,
          struct cifs_sb_info *cifs_sb)
{
 struct smb_rqst rqst;
 struct smb2_create_req *req;
 struct smb2_create_rsp *rsp = ((void*)0);
 struct cifs_ses *ses = tcon->ses;
 struct kvec iov[3];
 struct kvec rsp_iov = {((void*)0), 0};
 int resp_buftype;
 int uni_path_len;
 __le16 *copy_path = ((void*)0);
 int copy_size;
 int rc = 0;
 unsigned int n_iov = 2;
 __u32 file_attributes = 0;
 char *pc_buf = ((void*)0);
 int flags = 0;
 unsigned int total_len;
 __le16 *utf16_path = ((void*)0);

 cifs_dbg(FYI, "mkdir\n");


 utf16_path = cifs_convert_path_to_utf16(full_path, cifs_sb);
 if (!utf16_path)
  return -ENOMEM;

 if (!ses || !(ses->server)) {
  rc = -EIO;
  goto err_free_path;
 }


 rc = smb2_plain_req_init(SMB2_CREATE, tcon, (void **) &req, &total_len);
 if (rc)
  goto err_free_path;


 if (smb3_encryption_required(tcon))
  flags |= CIFS_TRANSFORM_REQ;

 req->ImpersonationLevel = IL_IMPERSONATION;
 req->DesiredAccess = cpu_to_le32(FILE_WRITE_ATTRIBUTES);

 req->FileAttributes = cpu_to_le32(file_attributes);
 req->ShareAccess = FILE_SHARE_ALL_LE;
 req->CreateDisposition = cpu_to_le32(FILE_CREATE);
 req->CreateOptions = cpu_to_le32(CREATE_NOT_FILE);

 iov[0].iov_base = (char *)req;

 iov[0].iov_len = total_len - 1;

 req->NameOffset = cpu_to_le16(sizeof(struct smb2_create_req));
 if (tcon->share_flags & SHI1005_FLAGS_DFS) {
  int name_len;

  req->sync_hdr.Flags |= SMB2_FLAGS_DFS_OPERATIONS;
  rc = alloc_path_with_tree_prefix(&copy_path, &copy_size,
       &name_len,
       tcon->treeName, utf16_path);
  if (rc)
   goto err_free_req;

  req->NameLength = cpu_to_le16(name_len * 2);
  uni_path_len = copy_size;

  kfree(utf16_path);
  utf16_path = copy_path;
 } else {
  uni_path_len = (2 * UniStrnlen((wchar_t *)utf16_path, PATH_MAX)) + 2;

  req->NameLength = cpu_to_le16(uni_path_len - 2);
  if (uni_path_len % 8 != 0) {
   copy_size = roundup(uni_path_len, 8);
   copy_path = kzalloc(copy_size, GFP_KERNEL);
   if (!copy_path) {
    rc = -ENOMEM;
    goto err_free_req;
   }
   memcpy((char *)copy_path, (const char *)utf16_path,
          uni_path_len);
   uni_path_len = copy_size;

   kfree(utf16_path);
   utf16_path = copy_path;
  }
 }

 iov[1].iov_len = uni_path_len;
 iov[1].iov_base = utf16_path;
 req->RequestedOplockLevel = SMB2_OPLOCK_LEVEL_NONE;

 if (tcon->posix_extensions) {

  rc = add_posix_context(iov, &n_iov, mode);
  if (rc)
   goto err_free_req;
  pc_buf = iov[n_iov-1].iov_base;
 }


 memset(&rqst, 0, sizeof(struct smb_rqst));
 rqst.rq_iov = iov;
 rqst.rq_nvec = n_iov;


 trace_smb3_posix_mkdir_enter(xid, tcon->tid, ses->Suid, CREATE_NOT_FILE,
        FILE_WRITE_ATTRIBUTES);

 rc = cifs_send_recv(xid, ses, &rqst, &resp_buftype, flags, &rsp_iov);
 if (rc) {
  cifs_stats_fail_inc(tcon, SMB2_CREATE_HE);
  trace_smb3_posix_mkdir_err(xid, tcon->tid, ses->Suid,
        CREATE_NOT_FILE,
        FILE_WRITE_ATTRIBUTES, rc);
  goto err_free_rsp_buf;
 }

 rsp = (struct smb2_create_rsp *)rsp_iov.iov_base;
 trace_smb3_posix_mkdir_done(xid, rsp->PersistentFileId, tcon->tid,
        ses->Suid, CREATE_NOT_FILE,
        FILE_WRITE_ATTRIBUTES);

 SMB2_close(xid, tcon, rsp->PersistentFileId, rsp->VolatileFileId);



err_free_rsp_buf:
 free_rsp_buf(resp_buftype, rsp);
 kfree(pc_buf);
err_free_req:
 cifs_small_buf_release(req);
err_free_path:
 kfree(utf16_path);
 return rc;
}
