
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kiocb {TYPE_2__* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_3__ {int Capability; } ;
struct cifs_tcon {TYPE_1__ fsUnixInfo; int ses; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct cifsInodeInfo {scalar_t__ oplock; } ;
struct cifsFileInfo {int tlink; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_4__ {scalar_t__ private_data; } ;


 scalar_t__ CIFS_CACHE_READ (struct cifsInodeInfo*) ;
 scalar_t__ CIFS_CACHE_WRITE (struct cifsInodeInfo*) ;
 struct cifsInodeInfo* CIFS_I (struct inode*) ;
 int CIFS_MOUNT_NOPOSIXBRL ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int CIFS_UNIX_FCNTL_CAP ;
 int FYI ;
 scalar_t__ cap_unix (int ) ;
 int cifs_dbg (int ,char*,struct inode*) ;
 scalar_t__ cifs_get_writer (struct cifsInodeInfo*) ;
 int cifs_put_writer (struct cifsInodeInfo*) ;
 scalar_t__ cifs_user_writev (struct kiocb*,struct iov_iter*) ;
 scalar_t__ cifs_writev (struct kiocb*,struct iov_iter*) ;
 int cifs_zap_mapping (struct inode*) ;
 struct inode* file_inode (TYPE_2__*) ;
 scalar_t__ generic_file_write_iter (struct kiocb*,struct iov_iter*) ;
 int le64_to_cpu (int ) ;
 struct cifs_tcon* tlink_tcon (int ) ;

ssize_t
cifs_strict_writev(struct kiocb *iocb, struct iov_iter *from)
{
 struct inode *inode = file_inode(iocb->ki_filp);
 struct cifsInodeInfo *cinode = CIFS_I(inode);
 struct cifs_sb_info *cifs_sb = CIFS_SB(inode->i_sb);
 struct cifsFileInfo *cfile = (struct cifsFileInfo *)
      iocb->ki_filp->private_data;
 struct cifs_tcon *tcon = tlink_tcon(cfile->tlink);
 ssize_t written;

 written = cifs_get_writer(cinode);
 if (written)
  return written;

 if (CIFS_CACHE_WRITE(cinode)) {
  if (cap_unix(tcon->ses) &&
  (CIFS_UNIX_FCNTL_CAP & le64_to_cpu(tcon->fsUnixInfo.Capability))
    && ((cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NOPOSIXBRL) == 0)) {
   written = generic_file_write_iter(iocb, from);
   goto out;
  }
  written = cifs_writev(iocb, from);
  goto out;
 }






 written = cifs_user_writev(iocb, from);
 if (CIFS_CACHE_READ(cinode)) {







  cifs_zap_mapping(inode);
  cifs_dbg(FYI, "Set Oplock/Lease to NONE for inode=%p after write\n",
    inode);
  cinode->oplock = 0;
 }
out:
 cifs_put_writer(cinode);
 return written;
}
