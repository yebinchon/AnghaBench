
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {TYPE_2__* s_bdev; } ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef int erofs_blk_t ;
struct TYPE_4__ {TYPE_1__* bd_inode; } ;
struct TYPE_3__ {struct address_space* i_mapping; } ;


 int IS_ERR (struct page*) ;
 int __GFP_FS ;
 int lock_page (struct page*) ;
 int mapping_gfp_constraint (struct address_space* const,int ) ;
 struct page* read_cache_page_gfp (struct address_space* const,int ,int ) ;

struct page *erofs_get_meta_page(struct super_block *sb, erofs_blk_t blkaddr)
{
 struct address_space *const mapping = sb->s_bdev->bd_inode->i_mapping;
 struct page *page;

 page = read_cache_page_gfp(mapping, blkaddr,
       mapping_gfp_constraint(mapping, ~__GFP_FS));

 if (!IS_ERR(page))
  lock_page(page);
 return page;
}
