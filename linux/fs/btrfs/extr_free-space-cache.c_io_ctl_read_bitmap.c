
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_io_ctl {int cur; int index; } ;
struct btrfs_free_space {int bitmap; } ;


 int copy_page (int ,int ) ;
 int io_ctl_check_crc (struct btrfs_io_ctl*,int ) ;
 int io_ctl_unmap_page (struct btrfs_io_ctl*) ;

__attribute__((used)) static int io_ctl_read_bitmap(struct btrfs_io_ctl *io_ctl,
         struct btrfs_free_space *entry)
{
 int ret;

 ret = io_ctl_check_crc(io_ctl, io_ctl->index);
 if (ret)
  return ret;

 copy_page(entry->bitmap, io_ctl->cur);
 io_ctl_unmap_page(io_ctl);

 return 0;
}
