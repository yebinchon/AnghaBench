
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
typedef int u32 ;
struct v9fs_session_info {int dummy; } ;
struct inode {int i_ino; } ;
struct dentry {int dummy; } ;
typedef int dev_t ;


 int MAJOR (int ) ;
 int MINOR (int ) ;
 int P9_DEBUG_VFS ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ U32_MAX_DIGITS ;
 int p9_debug (int ,char*,int ,struct dentry*,int ,int,int) ;
 int sprintf (char*,char*,int,int) ;
 int unixmode2p9mode (struct v9fs_session_info*,int ) ;
 struct v9fs_session_info* v9fs_inode2v9ses (struct inode*) ;
 int v9fs_vfs_mkspecial (struct inode*,struct dentry*,int ,char*) ;

__attribute__((used)) static int
v9fs_vfs_mknod(struct inode *dir, struct dentry *dentry, umode_t mode, dev_t rdev)
{
 struct v9fs_session_info *v9ses = v9fs_inode2v9ses(dir);
 int retval;
 char name[2 + U32_MAX_DIGITS + 1 + U32_MAX_DIGITS + 1];
 u32 perm;

 p9_debug(P9_DEBUG_VFS, " %lu,%pd mode: %hx MAJOR: %u MINOR: %u\n",
   dir->i_ino, dentry, mode,
   MAJOR(rdev), MINOR(rdev));


 if (S_ISBLK(mode))
  sprintf(name, "b %u %u", MAJOR(rdev), MINOR(rdev));
 else if (S_ISCHR(mode))
  sprintf(name, "c %u %u", MAJOR(rdev), MINOR(rdev));
 else
  *name = 0;

 perm = unixmode2p9mode(v9ses, mode);
 retval = v9fs_vfs_mkspecial(dir, dentry, perm, name);

 return retval;
}
