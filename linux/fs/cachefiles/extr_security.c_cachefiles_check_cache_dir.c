
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct cachefiles_cache {int dummy; } ;


 int d_backing_inode (struct dentry*) ;
 int pr_err (char*,int) ;
 int security_inode_create (int ,struct dentry*,int ) ;
 int security_inode_mkdir (int ,struct dentry*,int ) ;

__attribute__((used)) static int cachefiles_check_cache_dir(struct cachefiles_cache *cache,
          struct dentry *root)
{
 int ret;

 ret = security_inode_mkdir(d_backing_inode(root), root, 0);
 if (ret < 0) {
  pr_err("Security denies permission to make dirs: error %d",
         ret);
  return ret;
 }

 ret = security_inode_create(d_backing_inode(root), root, 0);
 if (ret < 0)
  pr_err("Security denies permission to create files: error %d",
         ret);

 return ret;
}
