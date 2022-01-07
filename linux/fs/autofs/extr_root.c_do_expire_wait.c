
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {struct dentry* dentry; int mnt; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int autofs_del_expiring (struct dentry*) ;
 int autofs_expire_wait (struct path const*,int) ;
 struct dentry* autofs_lookup_expiring (struct dentry*,int) ;
 int dput (struct dentry*) ;

__attribute__((used)) static int do_expire_wait(const struct path *path, bool rcu_walk)
{
 struct dentry *dentry = path->dentry;
 struct dentry *expiring;

 expiring = autofs_lookup_expiring(dentry, rcu_walk);
 if (IS_ERR(expiring))
  return PTR_ERR(expiring);
 if (!expiring)
  return autofs_expire_wait(path, rcu_walk);
 else {
  const struct path this = { .mnt = path->mnt, .dentry = expiring };





  autofs_expire_wait(&this, 0);
  autofs_del_expiring(expiring);
  dput(expiring);
 }
 return 0;
}
