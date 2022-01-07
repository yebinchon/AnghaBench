
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct inode {int dummy; } ;
struct extent_map {scalar_t__ block_start; scalar_t__ len; } ;


 scalar_t__ EXTENT_MAP_LAST_BYTE ;
 int defrag_check_next_extent (struct inode*,struct extent_map*) ;
 struct extent_map* defrag_lookup_extent (struct inode*,scalar_t__) ;
 scalar_t__ extent_map_end (struct extent_map*) ;
 int free_extent_map (struct extent_map*) ;

__attribute__((used)) static int should_defrag_range(struct inode *inode, u64 start, u32 thresh,
          u64 *last_len, u64 *skip, u64 *defrag_end,
          int compress)
{
 struct extent_map *em;
 int ret = 1;
 bool next_mergeable = 1;
 bool prev_mergeable = 1;





 if (start < *defrag_end)
  return 1;

 *skip = 0;

 em = defrag_lookup_extent(inode, start);
 if (!em)
  return 0;


 if (em->block_start >= EXTENT_MAP_LAST_BYTE) {
  ret = 0;
  goto out;
 }

 if (!*defrag_end)
  prev_mergeable = 0;

 next_mergeable = defrag_check_next_extent(inode, em);




 if (!compress && (*last_len == 0 || *last_len >= thresh) &&
     (em->len >= thresh || (!next_mergeable && !prev_mergeable)))
  ret = 0;
out:
 if (ret) {
  *defrag_end = extent_map_end(em);
 } else {
  *last_len = 0;
  *skip = extent_map_end(em);
  *defrag_end = 0;
 }

 free_extent_map(em);
 return ret;
}
