
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct btrfs_io_ctl {int num_pages; int fs_info; scalar_t__ orig; int * pages; int check_crcs; } ;


 int EIO ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ btrfs_crc32c (scalar_t__,scalar_t__,scalar_t__) ;
 int btrfs_crc32c_final (scalar_t__,int *) ;
 int btrfs_err_rl (int ,char*) ;
 int io_ctl_map_page (struct btrfs_io_ctl*,int ) ;
 int io_ctl_unmap_page (struct btrfs_io_ctl*) ;
 scalar_t__* page_address (int ) ;

__attribute__((used)) static int io_ctl_check_crc(struct btrfs_io_ctl *io_ctl, int index)
{
 u32 *tmp, val;
 u32 crc = ~(u32)0;
 unsigned offset = 0;

 if (!io_ctl->check_crcs) {
  io_ctl_map_page(io_ctl, 0);
  return 0;
 }

 if (index == 0)
  offset = sizeof(u32) * io_ctl->num_pages;

 tmp = page_address(io_ctl->pages[0]);
 tmp += index;
 val = *tmp;

 io_ctl_map_page(io_ctl, 0);
 crc = btrfs_crc32c(crc, io_ctl->orig + offset, PAGE_SIZE - offset);
 btrfs_crc32c_final(crc, (u8 *)&crc);
 if (val != crc) {
  btrfs_err_rl(io_ctl->fs_info,
   "csum mismatch on free space cache");
  io_ctl_unmap_page(io_ctl);
  return -EIO;
 }

 return 0;
}
