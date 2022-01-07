
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {scalar_t__ private_data; } ;
struct cifsFileInfo {int tlink; } ;
struct TYPE_2__ {scalar_t__ unix_ext; } ;


 int cifs_get_file_info (struct file*) ;
 int cifs_get_file_info_unix (struct file*) ;
 int cifs_inode_needs_reval (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 TYPE_1__* tlink_tcon (int ) ;

int cifs_revalidate_file_attr(struct file *filp)
{
 int rc = 0;
 struct inode *inode = file_inode(filp);
 struct cifsFileInfo *cfile = (struct cifsFileInfo *) filp->private_data;

 if (!cifs_inode_needs_reval(inode))
  return rc;

 if (tlink_tcon(cfile->tlink)->unix_ext)
  rc = cifs_get_file_info_unix(filp);
 else
  rc = cifs_get_file_info(filp);

 return rc;
}
