
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef int ssize_t ;
typedef int __u64 ;
struct TYPE_2__ {int createtime; } ;


 TYPE_1__* CIFS_I (struct inode*) ;
 int ERANGE ;
 int cifs_revalidate_dentry_attr (struct dentry*) ;

__attribute__((used)) static int cifs_creation_time_get(struct dentry *dentry, struct inode *inode,
      void *value, size_t size)
{
 ssize_t rc;
 __u64 * pcreatetime;

 rc = cifs_revalidate_dentry_attr(dentry);
 if (rc)
  return rc;

 if ((value == ((void*)0)) || (size == 0))
  return sizeof(__u64);
 else if (size < sizeof(__u64))
  return -ERANGE;


 pcreatetime = (__u64 *)value;
 *pcreatetime = CIFS_I(inode)->createtime;
 return sizeof(__u64);
}
