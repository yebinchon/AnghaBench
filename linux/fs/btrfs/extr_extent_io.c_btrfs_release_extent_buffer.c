
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;


 int __free_extent_buffer (struct extent_buffer*) ;
 int btrfs_release_extent_buffer_pages (struct extent_buffer*) ;

__attribute__((used)) static inline void btrfs_release_extent_buffer(struct extent_buffer *eb)
{
 btrfs_release_extent_buffer_pages(eb);
 __free_extent_buffer(eb);
}
