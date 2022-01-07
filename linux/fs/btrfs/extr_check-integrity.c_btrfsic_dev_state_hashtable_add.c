
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfsic_dev_state_hashtable {scalar_t__ table; } ;
struct btrfsic_dev_state {int collision_resolving_node; TYPE_1__* bdev; } ;
struct TYPE_2__ {scalar_t__ bd_dev; } ;


 int BTRFSIC_DEV2STATE_HASHTABLE_SIZE ;
 int list_add (int *,scalar_t__) ;

__attribute__((used)) static void btrfsic_dev_state_hashtable_add(
  struct btrfsic_dev_state *ds,
  struct btrfsic_dev_state_hashtable *h)
{
 const unsigned int hashval =
     (((unsigned int)((uintptr_t)ds->bdev->bd_dev)) &
      (BTRFSIC_DEV2STATE_HASHTABLE_SIZE - 1));

 list_add(&ds->collision_resolving_node, h->table + hashval);
}
