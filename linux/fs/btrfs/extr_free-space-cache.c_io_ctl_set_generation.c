
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct btrfs_io_ctl {int num_pages; int size; int * cur; scalar_t__ check_crcs; } ;
typedef int __le64 ;


 int cpu_to_le64 (int ) ;
 int io_ctl_map_page (struct btrfs_io_ctl*,int) ;

__attribute__((used)) static void io_ctl_set_generation(struct btrfs_io_ctl *io_ctl, u64 generation)
{
 __le64 *val;

 io_ctl_map_page(io_ctl, 1);





 if (io_ctl->check_crcs) {
  io_ctl->cur += (sizeof(u32) * io_ctl->num_pages);
  io_ctl->size -= sizeof(u64) + (sizeof(u32) * io_ctl->num_pages);
 } else {
  io_ctl->cur += sizeof(u64);
  io_ctl->size -= sizeof(u64) * 2;
 }

 val = io_ctl->cur;
 *val = cpu_to_le64(generation);
 io_ctl->cur += sizeof(u64);
}
