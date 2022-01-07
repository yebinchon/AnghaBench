
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_state; } ;
struct cifs_fattr {int cf_flags; int cf_cifsattrs; int cf_nlink; } ;


 int ATTR_DIRECTORY ;
 int CIFS_FATTR_UNKNOWN_NLINK ;
 int I_NEW ;
 int set_nlink (struct inode*,int) ;

__attribute__((used)) static void
cifs_nlink_fattr_to_inode(struct inode *inode, struct cifs_fattr *fattr)
{





 if (fattr->cf_flags & CIFS_FATTR_UNKNOWN_NLINK) {

  if (inode->i_state & I_NEW) {
   if (fattr->cf_cifsattrs & ATTR_DIRECTORY)
    set_nlink(inode, 2);
   else
    set_nlink(inode, 1);
  }
  return;
 }


 set_nlink(inode, fattr->cf_nlink);
}
