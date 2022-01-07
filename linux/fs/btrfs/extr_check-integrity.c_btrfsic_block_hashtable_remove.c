
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfsic_block {int collision_resolving_node; } ;


 int list_del (int *) ;

__attribute__((used)) static void btrfsic_block_hashtable_remove(struct btrfsic_block *b)
{
 list_del(&b->collision_resolving_node);
}
