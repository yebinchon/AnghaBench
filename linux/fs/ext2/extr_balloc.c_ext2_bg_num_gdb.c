
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {unsigned long s_gdb_count; } ;


 TYPE_1__* EXT2_SB (struct super_block*) ;
 scalar_t__ ext2_bg_has_super (struct super_block*,int) ;

unsigned long ext2_bg_num_gdb(struct super_block *sb, int group)
{
 return ext2_bg_has_super(sb, group) ? EXT2_SB(sb)->s_gdb_count : 0;
}
