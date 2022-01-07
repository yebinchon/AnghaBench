
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ino; int i_sb; int i_nlink; scalar_t__ i_size; int i_data; } ;
struct TYPE_2__ {int i_ext_last; int * i_ext_bh; int * i_ac; int * i_lc; } ;


 TYPE_1__* AFFS_I (struct inode*) ;
 int affs_brelse (int *) ;
 int affs_free_block (int ,int ) ;
 int affs_free_prealloc (struct inode*) ;
 int affs_truncate (struct inode*) ;
 int clear_inode (struct inode*) ;
 int free_page (unsigned long) ;
 int invalidate_inode_buffers (struct inode*) ;
 int pr_debug (char*,...) ;
 int truncate_inode_pages_final (int *) ;

void
affs_evict_inode(struct inode *inode)
{
 unsigned long cache_page;
 pr_debug("evict_inode(ino=%lu, nlink=%u)\n",
   inode->i_ino, inode->i_nlink);
 truncate_inode_pages_final(&inode->i_data);

 if (!inode->i_nlink) {
  inode->i_size = 0;
  affs_truncate(inode);
 }

 invalidate_inode_buffers(inode);
 clear_inode(inode);
 affs_free_prealloc(inode);
 cache_page = (unsigned long)AFFS_I(inode)->i_lc;
 if (cache_page) {
  pr_debug("freeing ext cache\n");
  AFFS_I(inode)->i_lc = ((void*)0);
  AFFS_I(inode)->i_ac = ((void*)0);
  free_page(cache_page);
 }
 affs_brelse(AFFS_I(inode)->i_ext_bh);
 AFFS_I(inode)->i_ext_last = ~1;
 AFFS_I(inode)->i_ext_bh = ((void*)0);

 if (!inode->i_nlink)
  affs_free_block(inode->i_sb, inode->i_ino);
}
