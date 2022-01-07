
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_sb_info {int mnt_cifs_flags; } ;


 int CIFS_MOUNT_POSIX_PATHS ;

__attribute__((used)) static inline char CIFS_DIR_SEP(const struct cifs_sb_info *cifs_sb)
{
 if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_POSIX_PATHS)
  return '/';
 else
  return '\\';
}
