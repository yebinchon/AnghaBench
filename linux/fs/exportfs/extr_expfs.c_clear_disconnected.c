
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_flags; int d_lock; } ;


 int DCACHE_DISCONNECTED ;
 int IS_ROOT (struct dentry*) ;
 int WARN_ON_ONCE (int ) ;
 int dget (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void clear_disconnected(struct dentry *dentry)
{
 dget(dentry);
 while (dentry->d_flags & DCACHE_DISCONNECTED) {
  struct dentry *parent = dget_parent(dentry);

  WARN_ON_ONCE(IS_ROOT(dentry));

  spin_lock(&dentry->d_lock);
  dentry->d_flags &= ~DCACHE_DISCONNECTED;
  spin_unlock(&dentry->d_lock);

  dput(dentry);
  dentry = parent;
 }
 dput(dentry);
}
