
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct listxattr_iter {int buffer_ofs; int it; int dentry; } ;


 int d_inode (int ) ;
 int inline_xattr_iter_begin (int *,int ) ;
 int list_xattr_handlers ;
 int xattr_foreach (int *,int *,unsigned int*) ;
 int xattr_iter_end_final (int *) ;

__attribute__((used)) static int inline_listxattr(struct listxattr_iter *it)
{
 int ret;
 unsigned int remaining;

 ret = inline_xattr_iter_begin(&it->it, d_inode(it->dentry));
 if (ret < 0)
  return ret;

 remaining = ret;
 while (remaining) {
  ret = xattr_foreach(&it->it, &list_xattr_handlers, &remaining);
  if (ret)
   break;
 }
 xattr_iter_end_final(&it->it);
 return ret ? ret : it->buffer_ofs;
}
