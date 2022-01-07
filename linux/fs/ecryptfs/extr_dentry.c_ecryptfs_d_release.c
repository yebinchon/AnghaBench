
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_dentry_info {int rcu; int lower_path; } ;
struct dentry {struct ecryptfs_dentry_info* d_fsdata; } ;


 int call_rcu (int *,int ) ;
 int ecryptfs_dentry_free_rcu ;
 int path_put (int *) ;

__attribute__((used)) static void ecryptfs_d_release(struct dentry *dentry)
{
 struct ecryptfs_dentry_info *p = dentry->d_fsdata;
 if (p) {
  path_put(&p->lower_path);
  call_rcu(&p->rcu, ecryptfs_dentry_free_rcu);
 }
}
