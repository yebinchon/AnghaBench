
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_raid_bio {unsigned long bio_list_bytes; unsigned long nr_data; unsigned long stripe_len; int bio_list_lock; } ;


 int BUG_ON (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int rbio_is_full(struct btrfs_raid_bio *rbio)
{
 unsigned long flags;
 unsigned long size = rbio->bio_list_bytes;
 int ret = 1;

 spin_lock_irqsave(&rbio->bio_list_lock, flags);
 if (size != rbio->nr_data * rbio->stripe_len)
  ret = 0;
 BUG_ON(size > rbio->nr_data * rbio->stripe_len);
 spin_unlock_irqrestore(&rbio->bio_list_lock, flags);

 return ret;
}
