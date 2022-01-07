
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_key {int objectid; int type; int offset; } ;
struct btrfs_disk_key {void* objectid; int type; void* offset; } ;


 void* cpu_to_le64 (int ) ;

__attribute__((used)) static inline void btrfs_cpu_key_to_disk(struct btrfs_disk_key *disk,
      const struct btrfs_key *cpu)
{
 disk->offset = cpu_to_le64(cpu->offset);
 disk->type = cpu->type;
 disk->objectid = cpu_to_le64(cpu->objectid);
}
