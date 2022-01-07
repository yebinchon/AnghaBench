
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct getxattr_iter {int buffer_size; int it; } ;


 int ENOATTR ;
 int find_xattr_handlers ;
 int inline_xattr_iter_begin (int *,struct inode*) ;
 int xattr_foreach (int *,int *,unsigned int*) ;
 int xattr_iter_end_final (int *) ;

__attribute__((used)) static int inline_getxattr(struct inode *inode, struct getxattr_iter *it)
{
 int ret;
 unsigned int remaining;

 ret = inline_xattr_iter_begin(&it->it, inode);
 if (ret < 0)
  return ret;

 remaining = ret;
 while (remaining) {
  ret = xattr_foreach(&it->it, &find_xattr_handlers, &remaining);
  if (ret != -ENOATTR)
   break;
 }
 xattr_iter_end_final(&it->it);

 return ret ? ret : it->buffer_size;
}
