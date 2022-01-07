
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w1_slave {TYPE_1__* master; int flags; } ;
struct TYPE_2__ {int list_mutex; } ;


 int EBUSY ;
 int W1_SLAVE_DETACH ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int w1_unref_slave (struct w1_slave*) ;

int w1_slave_detach(struct w1_slave *sl)
{

 int destroy_now;
 mutex_lock(&sl->master->list_mutex);
 destroy_now = !test_bit(W1_SLAVE_DETACH, &sl->flags);
 set_bit(W1_SLAVE_DETACH, &sl->flags);
 mutex_unlock(&sl->master->list_mutex);

 if (destroy_now)
  destroy_now = !w1_unref_slave(sl);
 return destroy_now ? 0 : -EBUSY;
}
