
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_io_ctl {scalar_t__ index; scalar_t__ num_pages; int cur; int size; int orig; int page; int * pages; } ;


 int ASSERT (int) ;
 int PAGE_SIZE ;
 int clear_page (int ) ;
 int page_address (int ) ;

__attribute__((used)) static void io_ctl_map_page(struct btrfs_io_ctl *io_ctl, int clear)
{
 ASSERT(io_ctl->index < io_ctl->num_pages);
 io_ctl->page = io_ctl->pages[io_ctl->index++];
 io_ctl->cur = page_address(io_ctl->page);
 io_ctl->orig = io_ctl->cur;
 io_ctl->size = PAGE_SIZE;
 if (clear)
  clear_page(io_ctl->cur);
}
