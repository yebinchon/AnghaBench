
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_user_data {int nr_evtchns; int ring_size; int ring_cons_mutex; int ring_prod_lock; int * ring; } ;
typedef int evtchn_port_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int evtchn_free_ring (int *) ;
 int * kvmalloc_array (unsigned int,int,int ) ;
 int memcpy (int *,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int evtchn_resize_ring(struct per_user_data *u)
{
 unsigned int new_size;
 evtchn_port_t *new_ring, *old_ring;





 if (u->nr_evtchns <= u->ring_size)
  return 0;

 if (u->ring_size == 0)
  new_size = 64;
 else
  new_size = 2 * u->ring_size;

 new_ring = kvmalloc_array(new_size, sizeof(*new_ring), GFP_KERNEL);
 if (!new_ring)
  return -ENOMEM;

 old_ring = u->ring;





 mutex_lock(&u->ring_cons_mutex);
 spin_lock_irq(&u->ring_prod_lock);
 memcpy(new_ring, old_ring, u->ring_size * sizeof(*u->ring));
 memcpy(new_ring + u->ring_size, old_ring,
        u->ring_size * sizeof(*u->ring));

 u->ring = new_ring;
 u->ring_size = new_size;

 spin_unlock_irq(&u->ring_prod_lock);
 mutex_unlock(&u->ring_cons_mutex);

 evtchn_free_ring(old_ring);

 return 0;
}
