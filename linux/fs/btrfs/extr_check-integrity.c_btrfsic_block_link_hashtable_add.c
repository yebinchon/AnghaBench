
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct btrfsic_block_link_hashtable {scalar_t__ table; } ;
struct btrfsic_block_link {int collision_resolving_node; TYPE_4__* block_ref_from; TYPE_3__* block_ref_to; } ;
struct TYPE_8__ {int dev_bytenr; TYPE_2__* dev_state; } ;
struct TYPE_7__ {int dev_bytenr; TYPE_1__* dev_state; } ;
struct TYPE_6__ {scalar_t__ bdev; } ;
struct TYPE_5__ {scalar_t__ bdev; } ;


 int BTRFSIC_BLOCK_LINK_HASHTABLE_SIZE ;
 int BUG_ON (int) ;
 int list_add (int *,scalar_t__) ;

__attribute__((used)) static void btrfsic_block_link_hashtable_add(
  struct btrfsic_block_link *l,
  struct btrfsic_block_link_hashtable *h)
{
 const unsigned int hashval =
     (((unsigned int)(l->block_ref_to->dev_bytenr >> 16)) ^
      ((unsigned int)(l->block_ref_from->dev_bytenr >> 16)) ^
      ((unsigned int)((uintptr_t)l->block_ref_to->dev_state->bdev)) ^
      ((unsigned int)((uintptr_t)l->block_ref_from->dev_state->bdev)))
      & (BTRFSIC_BLOCK_LINK_HASHTABLE_SIZE - 1);

 BUG_ON(((void*)0) == l->block_ref_to);
 BUG_ON(((void*)0) == l->block_ref_from);
 list_add(&l->collision_resolving_node, h->table + hashval);
}
