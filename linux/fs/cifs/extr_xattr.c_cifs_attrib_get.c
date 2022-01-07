
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef int ssize_t ;
typedef int __u32 ;
struct TYPE_2__ {int cifsAttrs; } ;


 TYPE_1__* CIFS_I (struct inode*) ;
 int ERANGE ;
 int cifs_revalidate_dentry_attr (struct dentry*) ;

__attribute__((used)) static int cifs_attrib_get(struct dentry *dentry,
      struct inode *inode, void *value,
      size_t size)
{
 ssize_t rc;
 __u32 *pattribute;

 rc = cifs_revalidate_dentry_attr(dentry);

 if (rc)
  return rc;

 if ((value == ((void*)0)) || (size == 0))
  return sizeof(__u32);
 else if (size < sizeof(__u32))
  return -ERANGE;


 pattribute = (__u32 *)value;
 *pattribute = CIFS_I(inode)->cifsAttrs;

 return sizeof(__u32);
}
