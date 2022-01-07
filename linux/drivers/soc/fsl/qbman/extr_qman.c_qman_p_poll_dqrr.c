
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qman_portal {int dummy; } ;


 int __poll_portal_fast (struct qman_portal*,unsigned int) ;

int qman_p_poll_dqrr(struct qman_portal *p, unsigned int limit)
{
 return __poll_portal_fast(p, limit);
}
