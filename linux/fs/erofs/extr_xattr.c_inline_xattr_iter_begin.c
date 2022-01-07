
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_iter {int page; int kaddr; int blkaddr; int ofs; } ;
struct inode {int i_sb; } ;
struct erofs_sb_info {int dummy; } ;
struct erofs_inode {unsigned int xattr_isize; unsigned int inode_isize; int nid; } ;


 int DBG_BUGON (int) ;
 int ENOATTR ;
 struct erofs_inode* EROFS_I (struct inode*) ;
 struct erofs_sb_info* EROFS_SB (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int erofs_blknr (scalar_t__) ;
 int erofs_blkoff (scalar_t__) ;
 int erofs_get_meta_page (int ,int ) ;
 scalar_t__ iloc (struct erofs_sb_info* const,int ) ;
 unsigned int inlinexattr_header_size (struct inode*) ;
 int kmap_atomic (int ) ;

__attribute__((used)) static int inline_xattr_iter_begin(struct xattr_iter *it,
       struct inode *inode)
{
 struct erofs_inode *const vi = EROFS_I(inode);
 struct erofs_sb_info *const sbi = EROFS_SB(inode->i_sb);
 unsigned int xattr_header_sz, inline_xattr_ofs;

 xattr_header_sz = inlinexattr_header_size(inode);
 if (xattr_header_sz >= vi->xattr_isize) {
  DBG_BUGON(xattr_header_sz > vi->xattr_isize);
  return -ENOATTR;
 }

 inline_xattr_ofs = vi->inode_isize + xattr_header_sz;

 it->blkaddr = erofs_blknr(iloc(sbi, vi->nid) + inline_xattr_ofs);
 it->ofs = erofs_blkoff(iloc(sbi, vi->nid) + inline_xattr_ofs);

 it->page = erofs_get_meta_page(inode->i_sb, it->blkaddr);
 if (IS_ERR(it->page))
  return PTR_ERR(it->page);

 it->kaddr = kmap_atomic(it->page);
 return vi->xattr_isize - xattr_header_sz;
}
