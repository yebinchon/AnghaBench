
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_block_rsv {int size; } ;



__attribute__((used)) static inline u64 calc_global_rsv_need_space(struct btrfs_block_rsv *global)
{
 return (global->size << 1);
}
