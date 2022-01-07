
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_iter {int page; } ;


 int xattr_iter_end (struct xattr_iter*,int) ;

__attribute__((used)) static inline void xattr_iter_end_final(struct xattr_iter *it)
{
 if (!it->page)
  return;

 xattr_iter_end(it, 1);
}
