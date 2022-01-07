
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct kiocb {int ki_pos; TYPE_4__* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int i_sb; } ;
struct TYPE_6__ {int Capability; } ;
struct cifs_tcon {TYPE_5__* ses; TYPE_1__ fsUnixInfo; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct cifsInodeInfo {int lock_sem; } ;
struct cifsFileInfo {int tlink; } ;
typedef int ssize_t ;
struct TYPE_10__ {TYPE_3__* server; } ;
struct TYPE_9__ {scalar_t__ private_data; } ;
struct TYPE_8__ {TYPE_2__* vals; } ;
struct TYPE_7__ {int shared_lock_type; } ;


 int CIFS_CACHE_READ (struct cifsInodeInfo*) ;
 struct cifsInodeInfo* CIFS_I (struct inode*) ;
 int CIFS_MOUNT_NOPOSIXBRL ;
 int CIFS_READ_OP ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int CIFS_UNIX_FCNTL_CAP ;
 int EACCES ;
 scalar_t__ cap_unix (TYPE_5__*) ;
 int cifs_find_lock_conflict (struct cifsFileInfo*,int ,int ,int ,int ,int *,int ) ;
 int cifs_user_readv (struct kiocb*,struct iov_iter*) ;
 int down_read (int *) ;
 struct inode* file_inode (TYPE_4__*) ;
 int generic_file_read_iter (struct kiocb*,struct iov_iter*) ;
 int iov_iter_count (struct iov_iter*) ;
 int le64_to_cpu (int ) ;
 struct cifs_tcon* tlink_tcon (int ) ;
 int up_read (int *) ;

ssize_t
cifs_strict_readv(struct kiocb *iocb, struct iov_iter *to)
{
 struct inode *inode = file_inode(iocb->ki_filp);
 struct cifsInodeInfo *cinode = CIFS_I(inode);
 struct cifs_sb_info *cifs_sb = CIFS_SB(inode->i_sb);
 struct cifsFileInfo *cfile = (struct cifsFileInfo *)
      iocb->ki_filp->private_data;
 struct cifs_tcon *tcon = tlink_tcon(cfile->tlink);
 int rc = -EACCES;
 if (!CIFS_CACHE_READ(cinode))
  return cifs_user_readv(iocb, to);

 if (cap_unix(tcon->ses) &&
     (CIFS_UNIX_FCNTL_CAP & le64_to_cpu(tcon->fsUnixInfo.Capability)) &&
     ((cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NOPOSIXBRL) == 0))
  return generic_file_read_iter(iocb, to);





 down_read(&cinode->lock_sem);
 if (!cifs_find_lock_conflict(cfile, iocb->ki_pos, iov_iter_count(to),
         tcon->ses->server->vals->shared_lock_type,
         0, ((void*)0), CIFS_READ_OP))
  rc = generic_file_read_iter(iocb, to);
 up_read(&cinode->lock_sem);
 return rc;
}
