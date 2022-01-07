
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct TYPE_4__ {int sb; } ;
struct TYPE_3__ {scalar_t__ len; char const* name; } ;
struct getxattr_iter {int index; size_t buffer_size; TYPE_2__ it; void* buffer; TYPE_1__ name; } ;


 int EINVAL ;
 int ENOATTR ;
 int ERANGE ;
 scalar_t__ EROFS_NAME_LEN ;
 int init_inode_xattrs (struct inode*) ;
 int inline_getxattr (struct inode*,struct getxattr_iter*) ;
 int shared_getxattr (struct inode*,struct getxattr_iter*) ;
 scalar_t__ strlen (char const*) ;

int erofs_getxattr(struct inode *inode, int index,
     const char *name,
     void *buffer, size_t buffer_size)
{
 int ret;
 struct getxattr_iter it;

 if (!name)
  return -EINVAL;

 ret = init_inode_xattrs(inode);
 if (ret)
  return ret;

 it.index = index;

 it.name.len = strlen(name);
 if (it.name.len > EROFS_NAME_LEN)
  return -ERANGE;
 it.name.name = name;

 it.buffer = buffer;
 it.buffer_size = buffer_size;

 it.it.sb = inode->i_sb;
 ret = inline_getxattr(inode, &it);
 if (ret == -ENOATTR)
  ret = shared_getxattr(inode, &it);
 return ret;
}
