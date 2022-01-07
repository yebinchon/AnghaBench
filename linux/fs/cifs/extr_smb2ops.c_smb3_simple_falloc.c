
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {struct cifsFileInfo* private_data; } ;
struct cifs_tcon {TYPE_2__* ses; int tid; } ;
struct cifsInodeInfo {int cifsAttrs; } ;
struct TYPE_3__ {int persistent_fid; int volatile_fid; } ;
struct cifsFileInfo {TYPE_1__ fid; int pid; int dentry; } ;
typedef scalar_t__ loff_t ;
typedef int __le64 ;
struct TYPE_4__ {int Suid; } ;


 int CIFS_CACHE_READ (struct cifsInodeInfo*) ;
 struct cifsInodeInfo* CIFS_I (struct inode*) ;
 long EOPNOTSUPP ;
 int FILE_ATTRIBUTE_SPARSE_FILE ;
 long SMB2_set_eof (unsigned int,struct cifs_tcon*,int ,int ,int ,int *) ;
 int cpu_to_le64 (scalar_t__) ;
 struct inode* d_inode (int ) ;
 int free_xid (unsigned int) ;
 unsigned int get_xid () ;
 scalar_t__ i_size_read (struct inode*) ;
 int smb2_set_sparse (unsigned int,struct cifs_tcon*,struct cifsFileInfo*,struct inode*,int) ;
 int trace_smb3_falloc_done (unsigned int,int ,int ,int ,scalar_t__,scalar_t__) ;
 int trace_smb3_falloc_enter (unsigned int,int ,int ,int ,scalar_t__,scalar_t__) ;
 int trace_smb3_falloc_err (unsigned int,int ,int ,int ,scalar_t__,scalar_t__,long) ;

__attribute__((used)) static long smb3_simple_falloc(struct file *file, struct cifs_tcon *tcon,
       loff_t off, loff_t len, bool keep_size)
{
 struct inode *inode;
 struct cifsInodeInfo *cifsi;
 struct cifsFileInfo *cfile = file->private_data;
 long rc = -EOPNOTSUPP;
 unsigned int xid;
 __le64 eof;

 xid = get_xid();

 inode = d_inode(cfile->dentry);
 cifsi = CIFS_I(inode);

 trace_smb3_falloc_enter(xid, cfile->fid.persistent_fid, tcon->tid,
    tcon->ses->Suid, off, len);

 if (!CIFS_CACHE_READ(cifsi))
  if (keep_size == 0) {
   trace_smb3_falloc_err(xid, cfile->fid.persistent_fid,
    tcon->tid, tcon->ses->Suid, off, len, rc);
   free_xid(xid);
   return rc;
  }






 if ((cifsi->cifsAttrs & FILE_ATTRIBUTE_SPARSE_FILE) == 0) {
  if (keep_size == 1)
   rc = 0;

  else if (i_size_read(inode) >= off + len)

   rc = 0;

  else
   rc = -EOPNOTSUPP;
  if (rc)
   trace_smb3_falloc_err(xid, cfile->fid.persistent_fid,
    tcon->tid, tcon->ses->Suid, off, len, rc);
  else
   trace_smb3_falloc_done(xid, cfile->fid.persistent_fid,
    tcon->tid, tcon->ses->Suid, off, len);
  free_xid(xid);
  return rc;
 }

 if ((keep_size == 1) || (i_size_read(inode) >= off + len)) {
  if ((off > 8192) || (off + len + 8192 < i_size_read(inode))) {
   rc = -EOPNOTSUPP;
   trace_smb3_falloc_err(xid, cfile->fid.persistent_fid,
    tcon->tid, tcon->ses->Suid, off, len, rc);
   free_xid(xid);
   return rc;
  }

  smb2_set_sparse(xid, tcon, cfile, inode, 0);
  rc = 0;
 } else {
  smb2_set_sparse(xid, tcon, cfile, inode, 0);
  rc = 0;
  if (i_size_read(inode) < off + len) {
   eof = cpu_to_le64(off + len);
   rc = SMB2_set_eof(xid, tcon, cfile->fid.persistent_fid,
       cfile->fid.volatile_fid, cfile->pid,
       &eof);
  }
 }

 if (rc)
  trace_smb3_falloc_err(xid, cfile->fid.persistent_fid, tcon->tid,
    tcon->ses->Suid, off, len, rc);
 else
  trace_smb3_falloc_done(xid, cfile->fid.persistent_fid, tcon->tid,
    tcon->ses->Suid, off, len);

 free_xid(xid);
 return rc;
}
