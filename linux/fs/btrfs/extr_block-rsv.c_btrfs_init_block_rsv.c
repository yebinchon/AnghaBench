
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_block_rsv {unsigned short type; int lock; } ;


 int memset (struct btrfs_block_rsv*,int ,int) ;
 int spin_lock_init (int *) ;

void btrfs_init_block_rsv(struct btrfs_block_rsv *rsv, unsigned short type)
{
 memset(rsv, 0, sizeof(*rsv));
 spin_lock_init(&rsv->lock);
 rsv->type = type;
}
