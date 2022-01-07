
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_mds_client {int mutex; TYPE_1__* mdsmap; } ;
struct ceph_ioctl_layout {int object_size; int stripe_unit; scalar_t__ data_pool; } ;
struct TYPE_2__ {int m_num_data_pg_pools; scalar_t__* m_data_pg_pools; } ;


 long EINVAL ;
 int PAGE_MASK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static long __validate_layout(struct ceph_mds_client *mdsc,
         struct ceph_ioctl_layout *l)
{
 int i, err;


 if ((l->object_size & ~PAGE_MASK) ||
     (l->stripe_unit & ~PAGE_MASK) ||
     ((unsigned)l->stripe_unit != 0 &&
      ((unsigned)l->object_size % (unsigned)l->stripe_unit)))
  return -EINVAL;


 mutex_lock(&mdsc->mutex);
 err = -EINVAL;
 for (i = 0; i < mdsc->mdsmap->m_num_data_pg_pools; i++)
  if (mdsc->mdsmap->m_data_pg_pools[i] == l->data_pool) {
   err = 0;
   break;
  }
 mutex_unlock(&mdsc->mutex);
 if (err)
  return err;

 return 0;
}
