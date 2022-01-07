
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_raid_bio {TYPE_1__* bbio; } ;
struct TYPE_2__ {int* raid_map; } ;


 int BTRFS_STRIPE_HASH_TABLE_BITS ;
 int hash_64 (int,int ) ;

__attribute__((used)) static int rbio_bucket(struct btrfs_raid_bio *rbio)
{
 u64 num = rbio->bbio->raid_map[0];
 return hash_64(num >> 16, BTRFS_STRIPE_HASH_TABLE_BITS);
}
