
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct path {struct dentry* dentry; } ;
struct kstat {int attributes_mask; int attributes; int gid; int uid; int btime; int result_mask; int ino; int blksize; } ;
struct inode {TYPE_1__* i_mapping; } ;
struct dentry {int d_sb; } ;
struct cifs_tcon {int unix_ext; } ;
struct cifs_sb_info {int mnt_cifs_flags; int bsize; } ;
struct TYPE_6__ {int cifsAttrs; scalar_t__ createtime; int uniqueid; } ;
struct TYPE_5__ {scalar_t__ nrpages; } ;


 int CIFS_CACHE_READ (TYPE_3__*) ;
 TYPE_3__* CIFS_I (struct inode*) ;
 int CIFS_MOUNT_CIFS_ACL ;
 int CIFS_MOUNT_MULTIUSER ;
 int CIFS_MOUNT_OVERR_GID ;
 int CIFS_MOUNT_OVERR_UID ;
 struct cifs_sb_info* CIFS_SB (int ) ;
 int FILE_ATTRIBUTE_COMPRESSED ;
 int FILE_ATTRIBUTE_ENCRYPTED ;
 int STATX_ATTR_COMPRESSED ;
 int STATX_ATTR_ENCRYPTED ;
 int STATX_BTIME ;
 int cifs_NTtimeToUnix (int ) ;
 int cifs_revalidate_dentry_attr (struct dentry*) ;
 struct cifs_tcon* cifs_sb_master_tcon (struct cifs_sb_info*) ;
 int cpu_to_le64 (scalar_t__) ;
 int current_fsgid () ;
 int current_fsuid () ;
 struct inode* d_inode (struct dentry*) ;
 int filemap_fdatawait (TYPE_1__*) ;
 int generic_fillattr (struct inode*,struct kstat*) ;
 int mapping_set_error (TYPE_1__*,int) ;

int cifs_getattr(const struct path *path, struct kstat *stat,
   u32 request_mask, unsigned int flags)
{
 struct dentry *dentry = path->dentry;
 struct cifs_sb_info *cifs_sb = CIFS_SB(dentry->d_sb);
 struct cifs_tcon *tcon = cifs_sb_master_tcon(cifs_sb);
 struct inode *inode = d_inode(dentry);
 int rc;





 if (!CIFS_CACHE_READ(CIFS_I(inode)) && inode->i_mapping &&
     inode->i_mapping->nrpages != 0) {
  rc = filemap_fdatawait(inode->i_mapping);
  if (rc) {
   mapping_set_error(inode->i_mapping, rc);
   return rc;
  }
 }

 rc = cifs_revalidate_dentry_attr(dentry);
 if (rc)
  return rc;

 generic_fillattr(inode, stat);
 stat->blksize = cifs_sb->bsize;
 stat->ino = CIFS_I(inode)->uniqueid;


 if (CIFS_I(inode)->createtime) {
  stat->result_mask |= STATX_BTIME;
  stat->btime =
        cifs_NTtimeToUnix(cpu_to_le64(CIFS_I(inode)->createtime));
 }

 stat->attributes_mask |= (STATX_ATTR_COMPRESSED | STATX_ATTR_ENCRYPTED);
 if (CIFS_I(inode)->cifsAttrs & FILE_ATTRIBUTE_COMPRESSED)
  stat->attributes |= STATX_ATTR_COMPRESSED;
 if (CIFS_I(inode)->cifsAttrs & FILE_ATTRIBUTE_ENCRYPTED)
  stat->attributes |= STATX_ATTR_ENCRYPTED;






 if ((cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MULTIUSER) &&
     !(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_CIFS_ACL) &&
     !tcon->unix_ext) {
  if (!(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_OVERR_UID))
   stat->uid = current_fsuid();
  if (!(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_OVERR_GID))
   stat->gid = current_fsgid();
 }
 return rc;
}
