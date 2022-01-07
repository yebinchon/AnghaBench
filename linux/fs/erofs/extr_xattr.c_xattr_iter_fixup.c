
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_iter {scalar_t__ ofs; int * page; int kaddr; int blkaddr; int sb; } ;


 scalar_t__ EROFS_BLKSIZ ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 scalar_t__ erofs_blknr (scalar_t__) ;
 scalar_t__ erofs_blkoff (scalar_t__) ;
 int * erofs_get_meta_page (int ,int ) ;
 int kmap_atomic (int *) ;
 int xattr_iter_end (struct xattr_iter*,int) ;

__attribute__((used)) static inline int xattr_iter_fixup(struct xattr_iter *it)
{
 if (it->ofs < EROFS_BLKSIZ)
  return 0;

 xattr_iter_end(it, 1);

 it->blkaddr += erofs_blknr(it->ofs);

 it->page = erofs_get_meta_page(it->sb, it->blkaddr);
 if (IS_ERR(it->page)) {
  int err = PTR_ERR(it->page);

  it->page = ((void*)0);
  return err;
 }

 it->kaddr = kmap_atomic(it->page);
 it->ofs = erofs_blkoff(it->ofs);
 return 0;
}
