
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_root {struct extent_buffer* commit_root; struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {int skip_locking; int* locks; struct extent_buffer** nodes; scalar_t__ need_commit_sem; scalar_t__ search_commit_root; } ;
struct btrfs_fs_info {int commit_root_sem; } ;


 int ASSERT (int) ;
 int BTRFS_MAX_LEVEL ;
 int BTRFS_READ_LOCK ;
 int BTRFS_WRITE_LOCK ;
 int ENOMEM ;
 struct extent_buffer* ERR_PTR (int ) ;
 struct extent_buffer* btrfs_clone_extent_buffer (struct extent_buffer*) ;
 int btrfs_header_level (struct extent_buffer*) ;
 struct extent_buffer* btrfs_lock_root_node (struct btrfs_root*) ;
 struct extent_buffer* btrfs_read_lock_root_node (struct btrfs_root*) ;
 struct extent_buffer* btrfs_root_node (struct btrfs_root*) ;
 int btrfs_tree_read_unlock (struct extent_buffer*) ;
 int down_read (int *) ;
 int extent_buffer_get (struct extent_buffer*) ;
 int free_extent_buffer (struct extent_buffer*) ;
 int up_read (int *) ;

__attribute__((used)) static struct extent_buffer *btrfs_search_slot_get_root(struct btrfs_root *root,
       struct btrfs_path *p,
       int write_lock_level)
{
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct extent_buffer *b;
 int root_lock;
 int level = 0;


 root_lock = BTRFS_READ_LOCK;

 if (p->search_commit_root) {
  if (p->need_commit_sem) {
   down_read(&fs_info->commit_root_sem);
   b = btrfs_clone_extent_buffer(root->commit_root);
   up_read(&fs_info->commit_root_sem);
   if (!b)
    return ERR_PTR(-ENOMEM);

  } else {
   b = root->commit_root;
   extent_buffer_get(b);
  }
  level = btrfs_header_level(b);




  ASSERT(p->skip_locking == 1);

  goto out;
 }

 if (p->skip_locking) {
  b = btrfs_root_node(root);
  level = btrfs_header_level(b);
  goto out;
 }





 if (write_lock_level < BTRFS_MAX_LEVEL) {




  b = btrfs_read_lock_root_node(root);
  level = btrfs_header_level(b);
  if (level > write_lock_level)
   goto out;


  btrfs_tree_read_unlock(b);
  free_extent_buffer(b);
 }

 b = btrfs_lock_root_node(root);
 root_lock = BTRFS_WRITE_LOCK;


 level = btrfs_header_level(b);

out:
 p->nodes[level] = b;
 if (!p->skip_locking)
  p->locks[level] = root_lock;



 return b;
}
