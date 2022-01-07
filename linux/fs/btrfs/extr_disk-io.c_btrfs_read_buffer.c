
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_key {int dummy; } ;


 int btree_read_extent_buffer_pages (struct extent_buffer*,int ,int,struct btrfs_key*) ;

int btrfs_read_buffer(struct extent_buffer *buf, u64 parent_transid, int level,
        struct btrfs_key *first_key)
{
 return btree_read_extent_buffer_pages(buf, parent_transid,
           level, first_key);
}
