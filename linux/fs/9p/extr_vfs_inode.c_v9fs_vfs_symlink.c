
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; } ;
struct dentry {int dummy; } ;


 int P9_DEBUG_VFS ;
 int P9_DMSYMLINK ;
 int p9_debug (int ,char*,int ,struct dentry*,char const*) ;
 int v9fs_vfs_mkspecial (struct inode*,struct dentry*,int ,char const*) ;

__attribute__((used)) static int
v9fs_vfs_symlink(struct inode *dir, struct dentry *dentry, const char *symname)
{
 p9_debug(P9_DEBUG_VFS, " %lu,%pd,%s\n",
   dir->i_ino, dentry, symname);

 return v9fs_vfs_mkspecial(dir, dentry, P9_DMSYMLINK, symname);
}
