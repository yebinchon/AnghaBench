
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int EREMOTE ;
 struct dentry* ERR_PTR (int ) ;
 int _enter (char*,struct inode*,struct dentry*,struct dentry*) ;

__attribute__((used)) static struct dentry *afs_mntpt_lookup(struct inode *dir,
           struct dentry *dentry,
           unsigned int flags)
{
 _enter("%p,%p{%pd2}", dir, dentry, dentry);
 return ERR_PTR(-EREMOTE);
}
