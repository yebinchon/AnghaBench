
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct extent_map {scalar_t__ block_start; scalar_t__ start; scalar_t__ block_len; scalar_t__ orig_start; scalar_t__ len; int flags; int * bdev; } ;
struct btrfs_inode {int io_tree; } ;


 int ASSERT (struct extent_map*) ;
 int ENOMEM ;
 struct extent_map* ERR_PTR (int) ;
 int EXTENT_DELALLOC ;
 int EXTENT_FLAG_PREALLOC ;
 scalar_t__ EXTENT_MAP_DELALLOC ;
 scalar_t__ EXTENT_MAP_HOLE ;
 scalar_t__ IS_ERR (struct extent_map*) ;
 struct extent_map* alloc_extent_map () ;
 struct extent_map* btrfs_get_extent (struct btrfs_inode*,int *,int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ count_range_bits (int *,scalar_t__*,scalar_t__,scalar_t__,int ,int) ;
 scalar_t__ extent_map_end (struct extent_map*) ;
 int free_extent_map (struct extent_map*) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

struct extent_map *btrfs_get_extent_fiemap(struct btrfs_inode *inode,
        u64 start, u64 len)
{
 struct extent_map *em;
 struct extent_map *hole_em = ((void*)0);
 u64 delalloc_start = start;
 u64 end;
 u64 delalloc_len;
 u64 delalloc_end;
 int err = 0;

 em = btrfs_get_extent(inode, ((void*)0), 0, start, len, 0);
 if (IS_ERR(em))
  return em;






 if (em->block_start != EXTENT_MAP_HOLE &&
     !test_bit(EXTENT_FLAG_PREALLOC, &em->flags))
  return em;
 else
  hole_em = em;


 end = start + len;
 if (end < start)
  end = (u64)-1;
 else
  end -= 1;

 em = ((void*)0);


 delalloc_len = count_range_bits(&inode->io_tree, &delalloc_start,
     end, len, EXTENT_DELALLOC, 1);
 delalloc_end = delalloc_start + delalloc_len;
 if (delalloc_end < delalloc_start)
  delalloc_end = (u64)-1;





 if (delalloc_start > end || delalloc_end <= start) {
  em = hole_em;
  hole_em = ((void*)0);
  goto out;
 }





 delalloc_start = max(start, delalloc_start);
 delalloc_len = delalloc_end - delalloc_start;

 if (delalloc_len > 0) {
  u64 hole_start;
  u64 hole_len;
  const u64 hole_end = extent_map_end(hole_em);

  em = alloc_extent_map();
  if (!em) {
   err = -ENOMEM;
   goto out;
  }
  em->bdev = ((void*)0);

  ASSERT(hole_em);







  if (hole_end <= start || hole_em->start > end) {
         free_extent_map(hole_em);
         hole_em = ((void*)0);
  } else {
         hole_start = max(hole_em->start, start);
         hole_len = hole_end - hole_start;
  }

  if (hole_em && delalloc_start > hole_start) {





   em->len = min(hole_len, delalloc_start - hole_start);
   em->start = hole_start;
   em->orig_start = hole_start;




   em->block_start = hole_em->block_start;
   em->block_len = hole_len;
   if (test_bit(EXTENT_FLAG_PREALLOC, &hole_em->flags))
    set_bit(EXTENT_FLAG_PREALLOC, &em->flags);
  } else {




   em->start = delalloc_start;
   em->len = delalloc_len;
   em->orig_start = delalloc_start;
   em->block_start = EXTENT_MAP_DELALLOC;
   em->block_len = delalloc_len;
  }
 } else {
  return hole_em;
 }
out:

 free_extent_map(hole_em);
 if (err) {
  free_extent_map(em);
  return ERR_PTR(err);
 }
 return em;
}
