
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct extent_map {scalar_t__ start; scalar_t__ len; scalar_t__ block_start; scalar_t__ block_len; } ;


 scalar_t__ EXTENT_MAP_LAST_BYTE ;
 scalar_t__ SZ_128K ;
 struct extent_map* defrag_lookup_extent (struct inode*,scalar_t__) ;
 int free_extent_map (struct extent_map*) ;
 scalar_t__ i_size_read (struct inode*) ;

__attribute__((used)) static bool defrag_check_next_extent(struct inode *inode, struct extent_map *em)
{
 struct extent_map *next;
 bool ret = 1;


 if (em->start + em->len >= i_size_read(inode))
  return 0;

 next = defrag_lookup_extent(inode, em->start + em->len);
 if (!next || next->block_start >= EXTENT_MAP_LAST_BYTE)
  ret = 0;
 else if ((em->block_start + em->block_len == next->block_start) &&
   (em->block_len > SZ_128K && next->block_len > SZ_128K))
  ret = 0;

 free_extent_map(next);
 return ret;
}
