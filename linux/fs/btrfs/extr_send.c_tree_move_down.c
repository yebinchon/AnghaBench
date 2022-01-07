
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_path {scalar_t__* slots; struct extent_buffer** nodes; } ;


 int BUG_ON (int) ;
 scalar_t__ IS_ERR (struct extent_buffer*) ;
 int PTR_ERR (struct extent_buffer*) ;
 struct extent_buffer* btrfs_read_node_slot (struct extent_buffer*,scalar_t__) ;

__attribute__((used)) static int tree_move_down(struct btrfs_path *path, int *level)
{
 struct extent_buffer *eb;

 BUG_ON(*level == 0);
 eb = btrfs_read_node_slot(path->nodes[*level], path->slots[*level]);
 if (IS_ERR(eb))
  return PTR_ERR(eb);

 path->nodes[*level - 1] = eb;
 path->slots[*level - 1] = 0;
 (*level)--;
 return 0;
}
