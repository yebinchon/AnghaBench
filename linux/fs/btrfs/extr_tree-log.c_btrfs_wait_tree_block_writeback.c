
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct extent_buffer {scalar_t__ len; scalar_t__ start; TYPE_1__** pages; } ;
struct TYPE_2__ {int mapping; } ;


 int filemap_fdatawait_range (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void btrfs_wait_tree_block_writeback(struct extent_buffer *buf)
{
 filemap_fdatawait_range(buf->pages[0]->mapping,
           buf->start, buf->start + buf->len - 1);
}
