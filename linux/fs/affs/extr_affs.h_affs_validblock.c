
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int s_reserved; int s_partition_size; } ;


 TYPE_1__* AFFS_SB (struct super_block*) ;

__attribute__((used)) static inline bool affs_validblock(struct super_block *sb, int block)
{
 return(block >= AFFS_SB(sb)->s_reserved &&
        block < AFFS_SB(sb)->s_partition_size);
}
