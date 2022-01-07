
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_chunk {int dummy; } ;


 char* btrfs_stripe_dev_uuid (int ) ;
 int btrfs_stripe_nr (struct btrfs_chunk*,int) ;

__attribute__((used)) static inline char *btrfs_stripe_dev_uuid_nr(struct btrfs_chunk *c, int nr)
{
 return btrfs_stripe_dev_uuid(btrfs_stripe_nr(c, nr));
}
