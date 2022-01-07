
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int leak_list; } ;


 int btrfs_leak_debug_del (int *) ;
 int extent_buffer_cache ;
 int kmem_cache_free (int ,struct extent_buffer*) ;

__attribute__((used)) static void __free_extent_buffer(struct extent_buffer *eb)
{
 btrfs_leak_debug_del(&eb->leak_list);
 kmem_cache_free(extent_buffer_cache, eb);
}
