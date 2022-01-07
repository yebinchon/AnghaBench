
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int sector_t ;
typedef scalar_t__ erofs_blk_t ;
struct TYPE_2__ {scalar_t__ datalayout; } ;


 TYPE_1__* EROFS_I (struct inode*) ;
 scalar_t__ EROFS_INODE_FLAT_INLINE ;
 scalar_t__ LOG_BLOCK_SIZE ;
 scalar_t__ LOG_SECTORS_PER_BLOCK ;
 int erofs_get_block ;
 int generic_block_bmap (struct address_space*,int,int ) ;
 scalar_t__ i_size_read (struct inode*) ;

__attribute__((used)) static sector_t erofs_bmap(struct address_space *mapping, sector_t block)
{
 struct inode *inode = mapping->host;

 if (EROFS_I(inode)->datalayout == EROFS_INODE_FLAT_INLINE) {
  erofs_blk_t blks = i_size_read(inode) >> LOG_BLOCK_SIZE;

  if (block >> LOG_SECTORS_PER_BLOCK >= blks)
   return 0;
 }

 return generic_block_bmap(mapping, block, erofs_get_block);
}
