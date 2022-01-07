
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfsic_block_hashtable {scalar_t__ table; } ;
struct btrfsic_block {int dev_bytenr; int collision_resolving_node; TYPE_1__* dev_state; } ;
struct TYPE_2__ {scalar_t__ bdev; } ;


 int BTRFSIC_BLOCK_HASHTABLE_SIZE ;
 int list_add (int *,scalar_t__) ;

__attribute__((used)) static void btrfsic_block_hashtable_add(struct btrfsic_block *b,
     struct btrfsic_block_hashtable *h)
{
 const unsigned int hashval =
     (((unsigned int)(b->dev_bytenr >> 16)) ^
      ((unsigned int)((uintptr_t)b->dev_state->bdev))) &
      (BTRFSIC_BLOCK_HASHTABLE_SIZE - 1);

 list_add(&b->collision_resolving_node, h->table + hashval);
}
