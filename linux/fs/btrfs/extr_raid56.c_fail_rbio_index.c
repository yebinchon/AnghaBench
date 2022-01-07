
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_raid_bio {int faila; int failb; int bio_list_lock; int error; } ;


 int EIO ;
 int atomic_inc (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int fail_rbio_index(struct btrfs_raid_bio *rbio, int failed)
{
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&rbio->bio_list_lock, flags);


 if (rbio->faila == failed || rbio->failb == failed)
  goto out;

 if (rbio->faila == -1) {

  rbio->faila = failed;
  atomic_inc(&rbio->error);
 } else if (rbio->failb == -1) {

  rbio->failb = failed;
  atomic_inc(&rbio->error);
 } else {
  ret = -EIO;
 }
out:
 spin_unlock_irqrestore(&rbio->bio_list_lock, flags);

 return ret;
}
