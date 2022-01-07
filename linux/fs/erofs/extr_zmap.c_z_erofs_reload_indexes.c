
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct z_erofs_maprecorder {int * kaddr; struct erofs_map_blocks* map; TYPE_1__* inode; } ;
struct super_block {int dummy; } ;
struct page {int index; } ;
struct erofs_map_blocks {struct page* mpage; } ;
typedef int erofs_blk_t ;
struct TYPE_2__ {struct super_block* i_sb; } ;


 scalar_t__ IS_ERR (struct page*) ;
 int PTR_ERR (struct page*) ;
 struct page* erofs_get_meta_page (struct super_block* const,int ) ;
 void* kmap_atomic (struct page*) ;
 int kunmap_atomic (int *) ;
 int put_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int z_erofs_reload_indexes(struct z_erofs_maprecorder *m,
      erofs_blk_t eblk)
{
 struct super_block *const sb = m->inode->i_sb;
 struct erofs_map_blocks *const map = m->map;
 struct page *mpage = map->mpage;

 if (mpage) {
  if (mpage->index == eblk) {
   if (!m->kaddr)
    m->kaddr = kmap_atomic(mpage);
   return 0;
  }

  if (m->kaddr) {
   kunmap_atomic(m->kaddr);
   m->kaddr = ((void*)0);
  }
  put_page(mpage);
 }

 mpage = erofs_get_meta_page(sb, eblk);
 if (IS_ERR(mpage)) {
  map->mpage = ((void*)0);
  return PTR_ERR(mpage);
 }
 m->kaddr = kmap_atomic(mpage);
 unlock_page(mpage);
 map->mpage = mpage;
 return 0;
}
