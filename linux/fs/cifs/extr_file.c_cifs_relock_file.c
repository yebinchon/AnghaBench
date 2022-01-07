
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Capability; } ;
struct cifs_tcon {TYPE_5__* ses; TYPE_1__ fsUnixInfo; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct cifsInodeInfo {int lock_sem; scalar_t__ can_cache_brlcks; } ;
struct cifsFileInfo {int tlink; TYPE_4__* dentry; } ;
struct TYPE_10__ {TYPE_3__* server; } ;
struct TYPE_9__ {int d_sb; } ;
struct TYPE_8__ {TYPE_2__* ops; } ;
struct TYPE_7__ {int (* push_mand_locks ) (struct cifsFileInfo*) ;} ;


 struct cifsInodeInfo* CIFS_I (int ) ;
 int CIFS_MOUNT_NOPOSIXBRL ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int CIFS_UNIX_FCNTL_CAP ;
 int SINGLE_DEPTH_NESTING ;
 scalar_t__ cap_unix (TYPE_5__*) ;
 int cifs_push_posix_locks (struct cifsFileInfo*) ;
 int d_inode (TYPE_4__*) ;
 int down_read_nested (int *,int ) ;
 int le64_to_cpu (int ) ;
 int stub1 (struct cifsFileInfo*) ;
 struct cifs_tcon* tlink_tcon (int ) ;
 int up_read (int *) ;

__attribute__((used)) static int
cifs_relock_file(struct cifsFileInfo *cfile)
{
 struct cifs_sb_info *cifs_sb = CIFS_SB(cfile->dentry->d_sb);
 struct cifsInodeInfo *cinode = CIFS_I(d_inode(cfile->dentry));
 struct cifs_tcon *tcon = tlink_tcon(cfile->tlink);
 int rc = 0;

 down_read_nested(&cinode->lock_sem, SINGLE_DEPTH_NESTING);
 if (cinode->can_cache_brlcks) {

  up_read(&cinode->lock_sem);
  return rc;
 }

 if (cap_unix(tcon->ses) &&
     (CIFS_UNIX_FCNTL_CAP & le64_to_cpu(tcon->fsUnixInfo.Capability)) &&
     ((cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NOPOSIXBRL) == 0))
  rc = cifs_push_posix_locks(cfile);
 else
  rc = tcon->ses->server->ops->push_mand_locks(cfile);

 up_read(&cinode->lock_sem);
 return rc;
}
