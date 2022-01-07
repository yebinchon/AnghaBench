
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtproc_info {int tx_lock; int svq; int sleepers; } ;


 int atomic_inc_return (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int virtqueue_enable_cb (int ) ;

__attribute__((used)) static void rpmsg_upref_sleepers(struct virtproc_info *vrp)
{

 mutex_lock(&vrp->tx_lock);


 if (atomic_inc_return(&vrp->sleepers) == 1)

  virtqueue_enable_cb(vrp->svq);

 mutex_unlock(&vrp->tx_lock);
}
