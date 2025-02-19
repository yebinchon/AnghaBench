
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct inode {int dummy; } ;
struct extent_state {int dummy; } ;
struct extent_map_tree {int lock; } ;
struct extent_map {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct TYPE_3__ {struct extent_io_tree io_tree; struct extent_map_tree extent_tree; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 scalar_t__ IS_ERR (struct extent_map*) ;
 scalar_t__ PAGE_SIZE ;
 struct extent_map* btrfs_get_extent (TYPE_1__*,int *,int ,scalar_t__,scalar_t__,int ) ;
 int lock_extent_bits (struct extent_io_tree*,scalar_t__,scalar_t__,struct extent_state**) ;
 struct extent_map* lookup_extent_mapping (struct extent_map_tree*,scalar_t__,scalar_t__) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int unlock_extent_cached (struct extent_io_tree*,scalar_t__,scalar_t__,struct extent_state**) ;

__attribute__((used)) static struct extent_map *defrag_lookup_extent(struct inode *inode, u64 start)
{
 struct extent_map_tree *em_tree = &BTRFS_I(inode)->extent_tree;
 struct extent_io_tree *io_tree = &BTRFS_I(inode)->io_tree;
 struct extent_map *em;
 u64 len = PAGE_SIZE;





 read_lock(&em_tree->lock);
 em = lookup_extent_mapping(em_tree, start, len);
 read_unlock(&em_tree->lock);

 if (!em) {
  struct extent_state *cached = ((void*)0);
  u64 end = start + len - 1;


  lock_extent_bits(io_tree, start, end, &cached);
  em = btrfs_get_extent(BTRFS_I(inode), ((void*)0), 0, start, len, 0);
  unlock_extent_cached(io_tree, start, end, &cached);

  if (IS_ERR(em))
   return ((void*)0);
 }

 return em;
}
