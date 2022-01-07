
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_3__ {int all_key_length; int all_key_count; int overflow; int right; int left; } ;
typedef TYPE_1__ befs_btree_nodehead ;


 int befs_debug (struct super_block const*,char*,...) ;
 int fs16_to_cpu (struct super_block const*,int ) ;
 int fs64_to_cpu (struct super_block const*,int ) ;

void
befs_dump_index_node(const struct super_block *sb, befs_btree_nodehead *node)
{
}
