
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_key {int dummy; } ;
struct btrfs_disk_key {int dummy; } ;


 int btrfs_comp_cpu_keys (struct btrfs_key*,struct btrfs_key const*) ;
 int btrfs_disk_key_to_cpu (struct btrfs_key*,struct btrfs_disk_key const*) ;

__attribute__((used)) static int comp_keys(const struct btrfs_disk_key *disk,
       const struct btrfs_key *k2)
{
 struct btrfs_key k1;

 btrfs_disk_key_to_cpu(&k1, disk);

 return btrfs_comp_cpu_keys(&k1, k2);
}
