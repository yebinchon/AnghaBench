
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; int i_dentry; } ;
struct cifs_fattr {scalar_t__ cf_uniqueid; scalar_t__ cf_createtime; int cf_mode; int cf_flags; } ;
struct TYPE_2__ {scalar_t__ uniqueid; scalar_t__ createtime; } ;


 int CIFS_FATTR_INO_COLLISION ;
 TYPE_1__* CIFS_I (struct inode*) ;
 int S_IFMT ;
 scalar_t__ S_ISDIR (int) ;
 int hlist_empty (int *) ;

__attribute__((used)) static int
cifs_find_inode(struct inode *inode, void *opaque)
{
 struct cifs_fattr *fattr = (struct cifs_fattr *) opaque;


 if (CIFS_I(inode)->uniqueid != fattr->cf_uniqueid)
  return 0;


 if (CIFS_I(inode)->createtime != fattr->cf_createtime)
  return 0;


 if ((inode->i_mode & S_IFMT) != (fattr->cf_mode & S_IFMT))
  return 0;


 if (S_ISDIR(inode->i_mode) && !hlist_empty(&inode->i_dentry))
  fattr->cf_flags |= CIFS_FATTR_INO_COLLISION;

 return 1;
}
