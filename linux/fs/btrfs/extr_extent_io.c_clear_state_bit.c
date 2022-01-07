
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct extent_state {unsigned int state; scalar_t__ end; scalar_t__ start; int rb_node; int wq; } ;
struct extent_io_tree {scalar_t__ dirty_bytes; int state; scalar_t__ private_data; } ;
struct extent_changeset {int dummy; } ;


 int BUG_ON (int) ;
 unsigned int EXTENT_CTLBITS ;
 unsigned int EXTENT_DIRTY ;
 int RB_CLEAR_NODE (int *) ;
 int WARN_ON (int) ;
 int add_extent_changeset (struct extent_state*,unsigned int,struct extent_changeset*,int ) ;
 int btrfs_clear_delalloc_extent (scalar_t__,struct extent_state*,unsigned int*) ;
 scalar_t__ extent_state_in_tree (struct extent_state*) ;
 int free_extent_state (struct extent_state*) ;
 scalar_t__ is_data_inode (scalar_t__) ;
 int merge_state (struct extent_io_tree*,struct extent_state*) ;
 struct extent_state* next_state (struct extent_state*) ;
 int rb_erase (int *,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static struct extent_state *clear_state_bit(struct extent_io_tree *tree,
         struct extent_state *state,
         unsigned *bits, int wake,
         struct extent_changeset *changeset)
{
 struct extent_state *next;
 unsigned bits_to_clear = *bits & ~EXTENT_CTLBITS;
 int ret;

 if ((bits_to_clear & EXTENT_DIRTY) && (state->state & EXTENT_DIRTY)) {
  u64 range = state->end - state->start + 1;
  WARN_ON(range > tree->dirty_bytes);
  tree->dirty_bytes -= range;
 }

 if (tree->private_data && is_data_inode(tree->private_data))
  btrfs_clear_delalloc_extent(tree->private_data, state, bits);

 ret = add_extent_changeset(state, bits_to_clear, changeset, 0);
 BUG_ON(ret < 0);
 state->state &= ~bits_to_clear;
 if (wake)
  wake_up(&state->wq);
 if (state->state == 0) {
  next = next_state(state);
  if (extent_state_in_tree(state)) {
   rb_erase(&state->rb_node, &tree->state);
   RB_CLEAR_NODE(&state->rb_node);
   free_extent_state(state);
  } else {
   WARN_ON(1);
  }
 } else {
  merge_state(tree, state);
  next = next_state(state);
 }
 return next;
}
