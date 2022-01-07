
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfsic_block_link {int ref_cnt; int * block_ref_from; int * block_ref_to; int collision_resolving_node; int node_ref_from; int node_ref_to; int magic_num; } ;


 int BTRFSIC_BLOCK_LINK_MAGIC_NUMBER ;
 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static void btrfsic_block_link_init(struct btrfsic_block_link *l)
{
 l->magic_num = BTRFSIC_BLOCK_LINK_MAGIC_NUMBER;
 l->ref_cnt = 1;
 INIT_LIST_HEAD(&l->node_ref_to);
 INIT_LIST_HEAD(&l->node_ref_from);
 INIT_LIST_HEAD(&l->collision_resolving_node);
 l->block_ref_to = ((void*)0);
 l->block_ref_from = ((void*)0);
}
