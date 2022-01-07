
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_3__ {int max_size; int free_node_ptr; int root_node_ptr; int data_type; int max_depth; int node_size; int magic; } ;
typedef TYPE_1__ befs_disk_btree_super ;


 int befs_debug (struct super_block const*,char*,...) ;
 int fs32_to_cpu (struct super_block const*,int ) ;
 int fs64_to_cpu (struct super_block const*,int ) ;

void
befs_dump_index_entry(const struct super_block *sb,
        befs_disk_btree_super *super)
{
}
