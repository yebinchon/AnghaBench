
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int cifs_revalidate_dentry_attr (struct dentry*) ;
 int cifs_revalidate_mapping (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;

int cifs_revalidate_dentry(struct dentry *dentry)
{
 int rc;
 struct inode *inode = d_inode(dentry);

 rc = cifs_revalidate_dentry_attr(dentry);
 if (rc)
  return rc;

 return cifs_revalidate_mapping(inode);
}
