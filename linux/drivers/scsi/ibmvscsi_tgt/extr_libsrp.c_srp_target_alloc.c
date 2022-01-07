
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_target {size_t srp_iu_size; size_t rx_ring_size; int rx_ring; struct device* dev; int iu_queue; int lock; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int dev_set_drvdata (struct device*,struct srp_target*) ;
 int spin_lock_init (int *) ;
 int srp_iu_pool_alloc (int *,size_t,int ) ;
 int srp_ring_alloc (struct device*,size_t,size_t) ;
 int srp_ring_free (struct device*,int ,size_t,size_t) ;

int srp_target_alloc(struct srp_target *target, struct device *dev,
       size_t nr, size_t iu_size)
{
 int err;

 spin_lock_init(&target->lock);

 target->dev = dev;

 target->srp_iu_size = iu_size;
 target->rx_ring_size = nr;
 target->rx_ring = srp_ring_alloc(target->dev, nr, iu_size);
 if (!target->rx_ring)
  return -ENOMEM;
 err = srp_iu_pool_alloc(&target->iu_queue, nr, target->rx_ring);
 if (err)
  goto free_ring;

 dev_set_drvdata(target->dev, target);
 return 0;

free_ring:
 srp_ring_free(target->dev, target->rx_ring, nr, iu_size);
 return -ENOMEM;
}
