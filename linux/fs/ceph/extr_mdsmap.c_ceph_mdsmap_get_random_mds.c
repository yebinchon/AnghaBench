
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ceph_mdsmap {int m_num_mds; TYPE_1__* m_info; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 int prandom_u32 () ;

int ceph_mdsmap_get_random_mds(struct ceph_mdsmap *m)
{
 int n = 0;
 int i;


 if (1 == m->m_num_mds && m->m_info[0].state > 0)
  return 0;


 for (i = 0; i < m->m_num_mds; i++)
  if (m->m_info[i].state > 0)
   n++;
 if (n == 0)
  return -1;


 n = prandom_u32() % n;
 for (i = 0; n > 0; i++, n--)
  while (m->m_info[i].state <= 0)
   i++;

 return i;
}
