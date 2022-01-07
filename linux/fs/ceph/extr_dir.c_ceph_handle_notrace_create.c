
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ESTALE ;
 int IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 struct dentry* ceph_lookup (struct inode*,struct dentry*,int ) ;
 int d_drop (struct dentry*) ;

int ceph_handle_notrace_create(struct inode *dir, struct dentry *dentry)
{
 struct dentry *result = ceph_lookup(dir, dentry, 0);

 if (result && !IS_ERR(result)) {
  d_drop(result);
  return -ESTALE;
 }
 return PTR_ERR(result);
}
