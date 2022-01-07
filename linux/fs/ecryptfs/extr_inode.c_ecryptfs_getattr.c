
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct path {struct dentry* dentry; } ;
struct kstat {int blocks; } ;
struct dentry {int dummy; } ;


 int d_inode (struct dentry*) ;
 int ecryptfs_dentry_to_lower_path (struct dentry*) ;
 int ecryptfs_inode_to_lower (int ) ;
 int fsstack_copy_attr_all (int ,int ) ;
 int generic_fillattr (int ,struct kstat*) ;
 int vfs_getattr (int ,struct kstat*,int ,unsigned int) ;

__attribute__((used)) static int ecryptfs_getattr(const struct path *path, struct kstat *stat,
       u32 request_mask, unsigned int flags)
{
 struct dentry *dentry = path->dentry;
 struct kstat lower_stat;
 int rc;

 rc = vfs_getattr(ecryptfs_dentry_to_lower_path(dentry), &lower_stat,
    request_mask, flags);
 if (!rc) {
  fsstack_copy_attr_all(d_inode(dentry),
          ecryptfs_inode_to_lower(d_inode(dentry)));
  generic_fillattr(d_inode(dentry), stat);
  stat->blocks = lower_stat.blocks;
 }
 return rc;
}
