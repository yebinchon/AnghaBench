
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {scalar_t__ reada; } ;
struct btrfs_key {int objectid; } ;
struct btrfs_fs_info {int dummy; } ;


 int EAGAIN ;
 int EIO ;
 int EUCLEAN ;
 int IS_ERR (struct extent_buffer*) ;
 int PTR_ERR (struct extent_buffer*) ;
 scalar_t__ READA_NONE ;
 scalar_t__ btrfs_buffer_uptodate (struct extent_buffer*,int ,int) ;
 int btrfs_header_level (struct extent_buffer*) ;
 int btrfs_node_blockptr (struct extent_buffer*,int) ;
 int btrfs_node_key_to_cpu (struct extent_buffer*,struct btrfs_key*,int) ;
 int btrfs_node_ptr_generation (struct extent_buffer*,int) ;
 int btrfs_read_buffer (struct extent_buffer*,int ,int,struct btrfs_key*) ;
 int btrfs_release_path (struct btrfs_path*) ;
 int btrfs_set_path_blocking (struct btrfs_path*) ;
 int btrfs_unlock_up_safe (struct btrfs_path*,int) ;
 scalar_t__ btrfs_verify_level_key (struct extent_buffer*,int,struct btrfs_key*,int ) ;
 int extent_buffer_uptodate (struct extent_buffer*) ;
 struct extent_buffer* find_extent_buffer (struct btrfs_fs_info*,int ) ;
 int free_extent_buffer (struct extent_buffer*) ;
 struct extent_buffer* read_tree_block (struct btrfs_fs_info*,int ,int ,int,struct btrfs_key*) ;
 int reada_for_search (struct btrfs_fs_info*,struct btrfs_path*,int,int,int ) ;

__attribute__((used)) static int
read_block_for_search(struct btrfs_root *root, struct btrfs_path *p,
        struct extent_buffer **eb_ret, int level, int slot,
        const struct btrfs_key *key)
{
 struct btrfs_fs_info *fs_info = root->fs_info;
 u64 blocknr;
 u64 gen;
 struct extent_buffer *b = *eb_ret;
 struct extent_buffer *tmp;
 struct btrfs_key first_key;
 int ret;
 int parent_level;

 blocknr = btrfs_node_blockptr(b, slot);
 gen = btrfs_node_ptr_generation(b, slot);
 parent_level = btrfs_header_level(b);
 btrfs_node_key_to_cpu(b, &first_key, slot);

 tmp = find_extent_buffer(fs_info, blocknr);
 if (tmp) {

  if (btrfs_buffer_uptodate(tmp, gen, 1) > 0) {





   if (btrfs_verify_level_key(tmp,
     parent_level - 1, &first_key, gen)) {
    free_extent_buffer(tmp);
    return -EUCLEAN;
   }
   *eb_ret = tmp;
   return 0;
  }







  btrfs_set_path_blocking(p);


  ret = btrfs_read_buffer(tmp, gen, parent_level - 1, &first_key);
  if (!ret) {
   *eb_ret = tmp;
   return 0;
  }
  free_extent_buffer(tmp);
  btrfs_release_path(p);
  return -EIO;
 }
 btrfs_unlock_up_safe(p, level + 1);
 btrfs_set_path_blocking(p);

 if (p->reada != READA_NONE)
  reada_for_search(fs_info, p, level, slot, key->objectid);

 ret = -EAGAIN;
 tmp = read_tree_block(fs_info, blocknr, gen, parent_level - 1,
         &first_key);
 if (!IS_ERR(tmp)) {






  if (!extent_buffer_uptodate(tmp))
   ret = -EIO;
  free_extent_buffer(tmp);
 } else {
  ret = PTR_ERR(tmp);
 }

 btrfs_release_path(p);
 return ret;
}
