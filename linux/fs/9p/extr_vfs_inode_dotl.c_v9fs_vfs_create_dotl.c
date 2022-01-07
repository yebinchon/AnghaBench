
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int v9fs_vfs_mknod_dotl (struct inode*,struct dentry*,int ,int ) ;

__attribute__((used)) static int
v9fs_vfs_create_dotl(struct inode *dir, struct dentry *dentry, umode_t omode,
  bool excl)
{
 return v9fs_vfs_mknod_dotl(dir, dentry, omode, 0);
}
