
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mdsmap {int m_num_mds; struct ceph_mdsmap* m_data_pg_pools; struct ceph_mdsmap* m_info; struct ceph_mdsmap* export_targets; } ;


 int kfree (struct ceph_mdsmap*) ;

void ceph_mdsmap_destroy(struct ceph_mdsmap *m)
{
 int i;

 for (i = 0; i < m->m_num_mds; i++)
  kfree(m->m_info[i].export_targets);
 kfree(m->m_info);
 kfree(m->m_data_pg_pools);
 kfree(m);
}
