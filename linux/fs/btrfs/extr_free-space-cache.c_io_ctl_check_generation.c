
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct btrfs_io_ctl {int num_pages; int size; int * cur; int fs_info; scalar_t__ check_crcs; } ;
typedef int __le64 ;


 int EIO ;
 int btrfs_err_rl (int ,char*,int ,scalar_t__) ;
 int io_ctl_unmap_page (struct btrfs_io_ctl*) ;
 scalar_t__ le64_to_cpu (int ) ;

__attribute__((used)) static int io_ctl_check_generation(struct btrfs_io_ctl *io_ctl, u64 generation)
{
 __le64 *gen;





 if (io_ctl->check_crcs) {
  io_ctl->cur += sizeof(u32) * io_ctl->num_pages;
  io_ctl->size -= sizeof(u64) +
   (sizeof(u32) * io_ctl->num_pages);
 } else {
  io_ctl->cur += sizeof(u64);
  io_ctl->size -= sizeof(u64) * 2;
 }

 gen = io_ctl->cur;
 if (le64_to_cpu(*gen) != generation) {
  btrfs_err_rl(io_ctl->fs_info,
   "space cache generation (%llu) does not match inode (%llu)",
    *gen, generation);
  io_ctl_unmap_page(io_ctl);
  return -EIO;
 }
 io_ctl->cur += sizeof(u64);
 return 0;
}
