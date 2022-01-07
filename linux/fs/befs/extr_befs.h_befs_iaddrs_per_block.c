
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
typedef int befs_disk_inode_addr ;
struct TYPE_2__ {int block_size; } ;


 TYPE_1__* BEFS_SB (struct super_block*) ;

__attribute__((used)) static inline unsigned int
befs_iaddrs_per_block(struct super_block *sb)
{
 return BEFS_SB(sb)->block_size / sizeof(befs_disk_inode_addr);
}
