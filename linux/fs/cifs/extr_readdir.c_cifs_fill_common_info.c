
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_sb_info {int mnt_dir_mode; int mnt_file_mode; int mnt_cifs_flags; int mnt_gid; int mnt_uid; } ;
struct cifs_fattr {int cf_cifsattrs; int cf_mode; scalar_t__ cf_eof; int cf_flags; int cf_dtype; int cf_gid; int cf_uid; } ;


 int ATTR_DIRECTORY ;
 int ATTR_READONLY ;
 int ATTR_REPARSE ;
 int ATTR_SYSTEM ;
 int CIFS_FATTR_NEED_REVAL ;
 int CIFS_FATTR_UNKNOWN_NLINK ;
 int CIFS_MOUNT_CIFS_ACL ;
 int CIFS_MOUNT_UNX_EMUL ;
 int DT_DIR ;
 int DT_FIFO ;
 int DT_REG ;
 int S_IFDIR ;
 int S_IFIFO ;
 int S_IFMT ;
 int S_IFREG ;
 int S_IWUGO ;

__attribute__((used)) static void
cifs_fill_common_info(struct cifs_fattr *fattr, struct cifs_sb_info *cifs_sb)
{
 fattr->cf_uid = cifs_sb->mnt_uid;
 fattr->cf_gid = cifs_sb->mnt_gid;

 if (fattr->cf_cifsattrs & ATTR_DIRECTORY) {
  fattr->cf_mode = S_IFDIR | cifs_sb->mnt_dir_mode;
  fattr->cf_dtype = DT_DIR;
 } else {
  fattr->cf_mode = S_IFREG | cifs_sb->mnt_file_mode;
  fattr->cf_dtype = DT_REG;
 }






 if (fattr->cf_cifsattrs & ATTR_REPARSE)
  fattr->cf_flags |= CIFS_FATTR_NEED_REVAL;


 fattr->cf_flags |= CIFS_FATTR_UNKNOWN_NLINK;

 if (fattr->cf_cifsattrs & ATTR_READONLY)
  fattr->cf_mode &= ~S_IWUGO;
 if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_CIFS_ACL)
  fattr->cf_flags |= CIFS_FATTR_NEED_REVAL;

 if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_UNX_EMUL &&
     fattr->cf_cifsattrs & ATTR_SYSTEM) {
  if (fattr->cf_eof == 0) {
   fattr->cf_mode &= ~S_IFMT;
   fattr->cf_mode |= S_IFIFO;
   fattr->cf_dtype = DT_FIFO;
  } else {





   fattr->cf_flags |= CIFS_FATTR_NEED_REVAL;
  }
 }
}
