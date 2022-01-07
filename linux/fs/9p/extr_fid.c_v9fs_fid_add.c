
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_fid {int dummy; } ;
struct dentry {int d_lock; } ;


 int __add_fid (struct dentry*,struct p9_fid*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void v9fs_fid_add(struct dentry *dentry, struct p9_fid *fid)
{
 spin_lock(&dentry->d_lock);
 __add_fid(dentry, fid);
 spin_unlock(&dentry->d_lock);
}
