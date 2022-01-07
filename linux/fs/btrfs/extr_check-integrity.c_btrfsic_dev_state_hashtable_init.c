
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfsic_dev_state_hashtable {scalar_t__ table; } ;


 int BTRFSIC_DEV2STATE_HASHTABLE_SIZE ;
 int INIT_LIST_HEAD (scalar_t__) ;

__attribute__((used)) static void btrfsic_dev_state_hashtable_init(
  struct btrfsic_dev_state_hashtable *h)
{
 int i;

 for (i = 0; i < BTRFSIC_DEV2STATE_HASHTABLE_SIZE; i++)
  INIT_LIST_HEAD(h->table + i);
}
