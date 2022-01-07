
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_io_ctl {int num_pages; scalar_t__* pages; } ;


 int ClearPageChecked (scalar_t__) ;
 int io_ctl_unmap_page (struct btrfs_io_ctl*) ;
 int put_page (scalar_t__) ;
 int unlock_page (scalar_t__) ;

__attribute__((used)) static void io_ctl_drop_pages(struct btrfs_io_ctl *io_ctl)
{
 int i;

 io_ctl_unmap_page(io_ctl);

 for (i = 0; i < io_ctl->num_pages; i++) {
  if (io_ctl->pages[i]) {
   ClearPageChecked(io_ctl->pages[i]);
   unlock_page(io_ctl->pages[i]);
   put_page(io_ctl->pages[i]);
  }
 }
}
