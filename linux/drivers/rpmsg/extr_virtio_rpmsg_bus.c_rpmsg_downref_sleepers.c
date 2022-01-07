
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtproc_info {int tx_lock; int svq; int sleepers; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int virtqueue_disable_cb (int ) ;

__attribute__((used)) static void rpmsg_downref_sleepers(struct virtproc_info *vrp)
{

 mutex_lock(&vrp->tx_lock);


 if (atomic_dec_and_test(&vrp->sleepers))

  virtqueue_disable_cb(vrp->svq);

 mutex_unlock(&vrp->tx_lock);
}
