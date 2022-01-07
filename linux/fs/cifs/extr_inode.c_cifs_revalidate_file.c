
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int cifs_revalidate_file_attr (struct file*) ;
 int cifs_revalidate_mapping (struct inode*) ;
 struct inode* file_inode (struct file*) ;

int cifs_revalidate_file(struct file *filp)
{
 int rc;
 struct inode *inode = file_inode(filp);

 rc = cifs_revalidate_file_attr(filp);
 if (rc)
  return rc;

 return cifs_revalidate_mapping(inode);
}
