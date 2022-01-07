
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct erofs_map_blocks {int * mpage; } ;
struct TYPE_2__ {int datalayout; } ;


 TYPE_1__* EROFS_I (struct inode*) ;
 scalar_t__ erofs_inode_is_data_compressed (int ) ;
 int erofs_map_blocks_flatmode (struct inode*,struct erofs_map_blocks*,int) ;
 int put_page (int *) ;
 int z_erofs_map_blocks_iter (struct inode*,struct erofs_map_blocks*,int) ;

int erofs_map_blocks(struct inode *inode,
       struct erofs_map_blocks *map, int flags)
{
 if (erofs_inode_is_data_compressed(EROFS_I(inode)->datalayout)) {
  int err = z_erofs_map_blocks_iter(inode, map, flags);

  if (map->mpage) {
   put_page(map->mpage);
   map->mpage = ((void*)0);
  }
  return err;
 }
 return erofs_map_blocks_flatmode(inode, map, flags);
}
