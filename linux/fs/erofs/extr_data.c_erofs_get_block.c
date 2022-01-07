
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct erofs_map_blocks {int m_la; int m_flags; int m_pa; } ;
struct buffer_head {int b_blocknr; } ;
typedef int sector_t ;


 int EROFS_GET_BLOCKS_RAW ;
 int EROFS_MAP_MAPPED ;
 int erofs_blknr (int ) ;
 int erofs_map_blocks (struct inode*,struct erofs_map_blocks*,int ) ;

__attribute__((used)) static int erofs_get_block(struct inode *inode, sector_t iblock,
      struct buffer_head *bh, int create)
{
 struct erofs_map_blocks map = {
  .m_la = iblock << 9,
 };
 int err;

 err = erofs_map_blocks(inode, &map, EROFS_GET_BLOCKS_RAW);
 if (err)
  return err;

 if (map.m_flags & EROFS_MAP_MAPPED)
  bh->b_blocknr = erofs_blknr(map.m_pa);

 return err;
}
