
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct inode {int i_sb; } ;
struct extent_map {scalar_t__ block_start; scalar_t__ start; scalar_t__ len; } ;
struct btrfs_fs_info {int sectorsize; } ;


 int BTRFS_I (struct inode*) ;
 scalar_t__ EXTENT_MAP_HOLE ;
 scalar_t__ IS_ERR (struct extent_map*) ;
 int PTR_ERR (struct extent_map*) ;
 struct extent_map* btrfs_get_extent (int ,int *,int ,int ,int ,int ) ;
 struct btrfs_fs_info* btrfs_sb (int ) ;
 int free_extent_map (struct extent_map*) ;
 int round_down (scalar_t__,int ) ;
 int round_up (scalar_t__,int ) ;

__attribute__((used)) static int find_first_non_hole(struct inode *inode, u64 *start, u64 *len)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(inode->i_sb);
 struct extent_map *em;
 int ret = 0;

 em = btrfs_get_extent(BTRFS_I(inode), ((void*)0), 0,
         round_down(*start, fs_info->sectorsize),
         round_up(*len, fs_info->sectorsize), 0);
 if (IS_ERR(em))
  return PTR_ERR(em);


 if (em->block_start == EXTENT_MAP_HOLE) {
  ret = 1;
  *len = em->start + em->len > *start + *len ?
         0 : *start + *len - em->start - em->len;
  *start = em->start + em->len;
 }
 free_extent_map(em);
 return ret;
}
