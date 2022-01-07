
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct TYPE_4__ {scalar_t__ blkaddr; int page; int kaddr; int ofs; } ;
struct getxattr_iter {int buffer_size; TYPE_1__ it; } ;
struct erofs_sb_info {int dummy; } ;
struct erofs_inode {unsigned int xattr_shared_count; int * xattr_shared_xattrs; } ;
typedef scalar_t__ erofs_blk_t ;


 int ENOATTR ;
 struct erofs_inode* EROFS_I (struct inode*) ;
 struct erofs_sb_info* EROFS_SB (struct super_block* const) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int erofs_get_meta_page (struct super_block* const,scalar_t__) ;
 int find_xattr_handlers ;
 int kmap_atomic (int ) ;
 int xattr_foreach (TYPE_1__*,int *,int *) ;
 int xattr_iter_end (TYPE_1__*,int) ;
 int xattr_iter_end_final (TYPE_1__*) ;
 scalar_t__ xattrblock_addr (struct erofs_sb_info* const,int ) ;
 int xattrblock_offset (struct erofs_sb_info* const,int ) ;

__attribute__((used)) static int shared_getxattr(struct inode *inode, struct getxattr_iter *it)
{
 struct erofs_inode *const vi = EROFS_I(inode);
 struct super_block *const sb = inode->i_sb;
 struct erofs_sb_info *const sbi = EROFS_SB(sb);
 unsigned int i;
 int ret = -ENOATTR;

 for (i = 0; i < vi->xattr_shared_count; ++i) {
  erofs_blk_t blkaddr =
   xattrblock_addr(sbi, vi->xattr_shared_xattrs[i]);

  it->it.ofs = xattrblock_offset(sbi, vi->xattr_shared_xattrs[i]);

  if (!i || blkaddr != it->it.blkaddr) {
   if (i)
    xattr_iter_end(&it->it, 1);

   it->it.page = erofs_get_meta_page(sb, blkaddr);
   if (IS_ERR(it->it.page))
    return PTR_ERR(it->it.page);

   it->it.kaddr = kmap_atomic(it->it.page);
   it->it.blkaddr = blkaddr;
  }

  ret = xattr_foreach(&it->it, &find_xattr_handlers, ((void*)0));
  if (ret != -ENOATTR)
   break;
 }
 if (vi->xattr_shared_count)
  xattr_iter_end_final(&it->it);

 return ret ? ret : it->buffer_size;
}
