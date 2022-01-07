
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_4__ {int allocation_group; scalar_t__ start; } ;
typedef TYPE_1__ befs_inode_addr ;
typedef scalar_t__ befs_blocknr_t ;
struct TYPE_5__ {int ag_shift; } ;


 TYPE_3__* BEFS_SB (struct super_block*) ;

__attribute__((used)) static inline befs_blocknr_t
iaddr2blockno(struct super_block *sb, const befs_inode_addr *iaddr)
{
 return ((iaddr->allocation_group << BEFS_SB(sb)->ag_shift) +
  iaddr->start);
}
