
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_disk_balance_args {void* stripes_max; void* stripes_min; void* limit; void* flags; void* target; void* vend; void* vstart; void* pend; void* pstart; void* devid; void* usage; void* profiles; } ;
struct btrfs_balance_args {int stripes_max; int stripes_min; int limit; int flags; int target; int vend; int vstart; int pend; int pstart; int devid; int usage; int profiles; } ;


 void* cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;
 int memset (struct btrfs_disk_balance_args*,int ,int) ;

__attribute__((used)) static inline void
btrfs_cpu_balance_args_to_disk(struct btrfs_disk_balance_args *disk,
          const struct btrfs_balance_args *cpu)
{
 memset(disk, 0, sizeof(*disk));

 disk->profiles = cpu_to_le64(cpu->profiles);
 disk->usage = cpu_to_le64(cpu->usage);
 disk->devid = cpu_to_le64(cpu->devid);
 disk->pstart = cpu_to_le64(cpu->pstart);
 disk->pend = cpu_to_le64(cpu->pend);
 disk->vstart = cpu_to_le64(cpu->vstart);
 disk->vend = cpu_to_le64(cpu->vend);
 disk->target = cpu_to_le64(cpu->target);
 disk->flags = cpu_to_le64(cpu->flags);
 disk->limit = cpu_to_le64(cpu->limit);
 disk->stripes_min = cpu_to_le32(cpu->stripes_min);
 disk->stripes_max = cpu_to_le32(cpu->stripes_max);
}
