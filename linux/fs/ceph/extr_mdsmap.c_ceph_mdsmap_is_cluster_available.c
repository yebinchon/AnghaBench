
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_mdsmap {scalar_t__ m_num_laggy; int m_num_mds; TYPE_1__* m_info; scalar_t__ m_damaged; int m_enabled; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ CEPH_MDS_STATE_ACTIVE ;

bool ceph_mdsmap_is_cluster_available(struct ceph_mdsmap *m)
{
 int i, nr_active = 0;
 if (!m->m_enabled)
  return 0;
 if (m->m_damaged)
  return 0;
 if (m->m_num_laggy > 0)
  return 0;
 for (i = 0; i < m->m_num_mds; i++) {
  if (m->m_info[i].state == CEPH_MDS_STATE_ACTIVE)
   nr_active++;
 }
 return nr_active > 0;
}
