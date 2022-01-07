
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_mod_elem {int op; int slot; int node; int generation; int blockptr; int key; int logical; } ;
struct extent_buffer {int start; } ;
typedef int gfp_t ;
typedef enum mod_log_op { ____Placeholder_mod_log_op } mod_log_op ;


 int MOD_LOG_KEY_ADD ;
 int RB_CLEAR_NODE (int *) ;
 int btrfs_node_blockptr (struct extent_buffer*,int) ;
 int btrfs_node_key (struct extent_buffer*,int *,int) ;
 int btrfs_node_ptr_generation (struct extent_buffer*,int) ;
 struct tree_mod_elem* kzalloc (int,int ) ;

__attribute__((used)) static struct tree_mod_elem *
alloc_tree_mod_elem(struct extent_buffer *eb, int slot,
      enum mod_log_op op, gfp_t flags)
{
 struct tree_mod_elem *tm;

 tm = kzalloc(sizeof(*tm), flags);
 if (!tm)
  return ((void*)0);

 tm->logical = eb->start;
 if (op != MOD_LOG_KEY_ADD) {
  btrfs_node_key(eb, &tm->key, slot);
  tm->blockptr = btrfs_node_blockptr(eb, slot);
 }
 tm->op = op;
 tm->slot = slot;
 tm->generation = btrfs_node_ptr_generation(eb, slot);
 RB_CLEAR_NODE(&tm->node);

 return tm;
}
