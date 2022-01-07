
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int start; } ;
struct btrfs_root_item {int dummy; } ;


 int btrfs_header_generation (struct extent_buffer*) ;
 int btrfs_header_level (struct extent_buffer*) ;
 int btrfs_set_root_bytenr (struct btrfs_root_item*,int ) ;
 int btrfs_set_root_generation (struct btrfs_root_item*,int ) ;
 int btrfs_set_root_level (struct btrfs_root_item*,int ) ;

void btrfs_set_root_node(struct btrfs_root_item *item,
    struct extent_buffer *node)
{
 btrfs_set_root_bytenr(item, node->start);
 btrfs_set_root_level(item, btrfs_header_level(node));
 btrfs_set_root_generation(item, btrfs_header_generation(node));
}
