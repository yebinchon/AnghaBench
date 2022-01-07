
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dirty; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int lowest_level; int* slots; int skip_release_on_error; int leave_spinning; int search_for_split; struct extent_buffer** nodes; scalar_t__* locks; int skip_locking; scalar_t__ keep_locks; } ;
struct btrfs_key {int dummy; } ;


 int BTRFS_MAX_LEVEL ;
 scalar_t__ BTRFS_READ_LOCK ;
 scalar_t__ BTRFS_WRITE_LOCK ;
 int BUG_ON (int) ;
 int EAGAIN ;
 scalar_t__ IS_ERR (struct extent_buffer*) ;
 int PTR_ERR (struct extent_buffer*) ;
 int WARN_ON (int) ;
 int btrfs_cow_block (struct btrfs_trans_handle*,struct btrfs_root*,struct extent_buffer*,struct extent_buffer*,int,struct extent_buffer**) ;
 int btrfs_header_level (struct extent_buffer*) ;
 int btrfs_leaf_free_space (struct extent_buffer*) ;
 int btrfs_release_path (struct btrfs_path*) ;
 struct extent_buffer* btrfs_search_slot_get_root (struct btrfs_root*,struct btrfs_path*,int) ;
 int btrfs_set_path_blocking (struct btrfs_path*) ;
 int btrfs_tree_lock (struct extent_buffer*) ;
 int btrfs_tree_read_lock (struct extent_buffer*) ;
 int btrfs_tree_read_lock_atomic (struct extent_buffer*) ;
 int btrfs_tree_unlock_rw (struct extent_buffer*,scalar_t__) ;
 int btrfs_try_tree_write_lock (struct extent_buffer*) ;
 int key_search (struct extent_buffer*,struct btrfs_key const*,int,int*,int*) ;
 int read_block_for_search (struct btrfs_root*,struct btrfs_path*,struct extent_buffer**,int,int,struct btrfs_key const*) ;
 int setup_nodes_for_search (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct extent_buffer*,int,int,int*) ;
 int should_cow_block (struct btrfs_trans_handle*,struct btrfs_root*,struct extent_buffer*) ;
 int split_leaf (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key const*,struct btrfs_path*,int,int) ;
 int unlock_up (struct btrfs_path*,int,int,int,int*) ;

int btrfs_search_slot(struct btrfs_trans_handle *trans, struct btrfs_root *root,
        const struct btrfs_key *key, struct btrfs_path *p,
        int ins_len, int cow)
{
 struct extent_buffer *b;
 int slot;
 int ret;
 int err;
 int level;
 int lowest_unlock = 1;

 int write_lock_level = 0;
 u8 lowest_level = 0;
 int min_write_lock_level;
 int prev_cmp;

 lowest_level = p->lowest_level;
 WARN_ON(lowest_level && ins_len > 0);
 WARN_ON(p->nodes[0] != ((void*)0));
 BUG_ON(!cow && ins_len);

 if (ins_len < 0) {
  lowest_unlock = 2;





  write_lock_level = 2;
 } else if (ins_len > 0) {




  write_lock_level = 1;
 }

 if (!cow)
  write_lock_level = -1;

 if (cow && (p->keep_locks || p->lowest_level))
  write_lock_level = BTRFS_MAX_LEVEL;

 min_write_lock_level = write_lock_level;

again:
 prev_cmp = -1;
 b = btrfs_search_slot_get_root(root, p, write_lock_level);
 if (IS_ERR(b)) {
  ret = PTR_ERR(b);
  goto done;
 }

 while (b) {
  level = btrfs_header_level(b);





  if (cow) {
   bool last_level = (level == (BTRFS_MAX_LEVEL - 1));






   if (!should_cow_block(trans, root, b)) {
    trans->dirty = 1;
    goto cow_done;
   }





   if (level > write_lock_level ||
       (level + 1 > write_lock_level &&
       level + 1 < BTRFS_MAX_LEVEL &&
       p->nodes[level + 1])) {
    write_lock_level = level + 1;
    btrfs_release_path(p);
    goto again;
   }

   btrfs_set_path_blocking(p);
   if (last_level)
    err = btrfs_cow_block(trans, root, b, ((void*)0), 0,
            &b);
   else
    err = btrfs_cow_block(trans, root, b,
            p->nodes[level + 1],
            p->slots[level + 1], &b);
   if (err) {
    ret = err;
    goto done;
   }
  }
cow_done:
  p->nodes[level] = b;
  if (!ins_len && !p->keep_locks) {
   int u = level + 1;

   if (u < BTRFS_MAX_LEVEL && p->locks[u]) {
    btrfs_tree_unlock_rw(p->nodes[u], p->locks[u]);
    p->locks[u] = 0;
   }
  }

  ret = key_search(b, key, level, &prev_cmp, &slot);
  if (ret < 0)
   goto done;

  if (level != 0) {
   int dec = 0;
   if (ret && slot > 0) {
    dec = 1;
    slot -= 1;
   }
   p->slots[level] = slot;
   err = setup_nodes_for_search(trans, root, p, b, level,
          ins_len, &write_lock_level);
   if (err == -EAGAIN)
    goto again;
   if (err) {
    ret = err;
    goto done;
   }
   b = p->nodes[level];
   slot = p->slots[level];







   if (slot == 0 && ins_len &&
       write_lock_level < level + 1) {
    write_lock_level = level + 1;
    btrfs_release_path(p);
    goto again;
   }

   unlock_up(p, level, lowest_unlock,
      min_write_lock_level, &write_lock_level);

   if (level == lowest_level) {
    if (dec)
     p->slots[level]++;
    goto done;
   }

   err = read_block_for_search(root, p, &b, level,
          slot, key);
   if (err == -EAGAIN)
    goto again;
   if (err) {
    ret = err;
    goto done;
   }

   if (!p->skip_locking) {
    level = btrfs_header_level(b);
    if (level <= write_lock_level) {
     if (!btrfs_try_tree_write_lock(b)) {
      btrfs_set_path_blocking(p);
      btrfs_tree_lock(b);
     }
     p->locks[level] = BTRFS_WRITE_LOCK;
    } else {
     if (!btrfs_tree_read_lock_atomic(b)) {
      btrfs_set_path_blocking(p);
      btrfs_tree_read_lock(b);
     }
     p->locks[level] = BTRFS_READ_LOCK;
    }
    p->nodes[level] = b;
   }
  } else {
   p->slots[level] = slot;
   if (ins_len > 0 &&
       btrfs_leaf_free_space(b) < ins_len) {
    if (write_lock_level < 1) {
     write_lock_level = 1;
     btrfs_release_path(p);
     goto again;
    }

    btrfs_set_path_blocking(p);
    err = split_leaf(trans, root, key,
       p, ins_len, ret == 0);

    BUG_ON(err > 0);
    if (err) {
     ret = err;
     goto done;
    }
   }
   if (!p->search_for_split)
    unlock_up(p, level, lowest_unlock,
       min_write_lock_level, ((void*)0));
   goto done;
  }
 }
 ret = 1;
done:




 if (!p->leave_spinning)
  btrfs_set_path_blocking(p);
 if (ret < 0 && !p->skip_release_on_error)
  btrfs_release_path(p);
 return ret;
}
