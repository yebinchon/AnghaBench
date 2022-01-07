
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfsic_dev_state {int dummy; } ;
typedef int dev_t ;


 int btrfsic_dev_state_hashtable ;
 struct btrfsic_dev_state* btrfsic_dev_state_hashtable_lookup (int ,int *) ;

__attribute__((used)) static struct btrfsic_dev_state *btrfsic_dev_state_lookup(dev_t dev)
{
 return btrfsic_dev_state_hashtable_lookup(dev,
        &btrfsic_dev_state_hashtable);
}
