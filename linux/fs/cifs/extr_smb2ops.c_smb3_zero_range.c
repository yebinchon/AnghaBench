
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file_zero_data_information {void* BeyondFinalZero; void* FileOffset; } ;
struct file {struct cifsFileInfo* private_data; } ;
struct cifs_tcon {int tid; struct cifs_ses* ses; } ;
struct cifs_ses {int Suid; } ;
struct cifsInodeInfo {int dummy; } ;
struct TYPE_2__ {int persistent_fid; int volatile_fid; } ;
struct cifsFileInfo {TYPE_1__ fid; int pid; int dentry; } ;
typedef scalar_t__ loff_t ;
typedef void* __le64 ;


 int CIFS_CACHE_READ (struct cifsInodeInfo*) ;
 struct cifsInodeInfo* CIFS_I (struct inode*) ;
 long EOPNOTSUPP ;
 int FSCTL_SET_ZERO_DATA ;
 int FYI ;
 long SMB2_ioctl (unsigned int,struct cifs_tcon*,int ,int ,int ,int,char*,int,int ,int *,int *) ;
 long SMB2_set_eof (unsigned int,struct cifs_tcon*,int ,int ,int ,void**) ;
 int cifs_dbg (int ,char*,scalar_t__,scalar_t__) ;
 void* cpu_to_le64 (scalar_t__) ;
 struct inode* d_inode (int ) ;
 int free_xid (unsigned int) ;
 unsigned int get_xid () ;
 scalar_t__ i_size_read (struct inode*) ;
 int trace_smb3_zero_done (unsigned int,int ,int ,int ,scalar_t__,scalar_t__) ;
 int trace_smb3_zero_enter (unsigned int,int ,int ,int ,scalar_t__,scalar_t__) ;
 int trace_smb3_zero_err (unsigned int,int ,int ,int ,scalar_t__,scalar_t__,long) ;

__attribute__((used)) static long smb3_zero_range(struct file *file, struct cifs_tcon *tcon,
       loff_t offset, loff_t len, bool keep_size)
{
 struct cifs_ses *ses = tcon->ses;
 struct inode *inode;
 struct cifsInodeInfo *cifsi;
 struct cifsFileInfo *cfile = file->private_data;
 struct file_zero_data_information fsctl_buf;
 long rc;
 unsigned int xid;
 __le64 eof;

 xid = get_xid();

 inode = d_inode(cfile->dentry);
 cifsi = CIFS_I(inode);

 trace_smb3_zero_enter(xid, cfile->fid.persistent_fid, tcon->tid,
         ses->Suid, offset, len);



 if (!CIFS_CACHE_READ(cifsi))
  if (keep_size == 0) {
   rc = -EOPNOTSUPP;
   trace_smb3_zero_err(xid, cfile->fid.persistent_fid,
    tcon->tid, ses->Suid, offset, len, rc);
   free_xid(xid);
   return rc;
  }

 cifs_dbg(FYI, "Offset %lld len %lld\n", offset, len);

 fsctl_buf.FileOffset = cpu_to_le64(offset);
 fsctl_buf.BeyondFinalZero = cpu_to_le64(offset + len);

 rc = SMB2_ioctl(xid, tcon, cfile->fid.persistent_fid,
   cfile->fid.volatile_fid, FSCTL_SET_ZERO_DATA, 1,
   (char *)&fsctl_buf,
   sizeof(struct file_zero_data_information),
   0, ((void*)0), ((void*)0));
 if (rc)
  goto zero_range_exit;




 if (keep_size == 0 && i_size_read(inode) < offset + len) {
  eof = cpu_to_le64(offset + len);
  rc = SMB2_set_eof(xid, tcon, cfile->fid.persistent_fid,
      cfile->fid.volatile_fid, cfile->pid, &eof);
 }

 zero_range_exit:
 free_xid(xid);
 if (rc)
  trace_smb3_zero_err(xid, cfile->fid.persistent_fid, tcon->tid,
         ses->Suid, offset, len, rc);
 else
  trace_smb3_zero_done(xid, cfile->fid.persistent_fid, tcon->tid,
         ses->Suid, offset, len);
 return rc;
}
