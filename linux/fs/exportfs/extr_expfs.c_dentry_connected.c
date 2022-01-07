
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_flags; } ;


 int DCACHE_DISCONNECTED ;
 int dget (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;

__attribute__((used)) static bool dentry_connected(struct dentry *dentry)
{
 dget(dentry);
 while (dentry->d_flags & DCACHE_DISCONNECTED) {
  struct dentry *parent = dget_parent(dentry);

  dput(dentry);
  if (dentry == parent) {
   dput(parent);
   return 0;
  }
  dentry = parent;
 }
 dput(dentry);
 return 1;
}
