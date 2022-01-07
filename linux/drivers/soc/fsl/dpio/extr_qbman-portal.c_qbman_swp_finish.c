
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qbman_swp {int dummy; } ;


 int kfree (struct qbman_swp*) ;

void qbman_swp_finish(struct qbman_swp *p)
{
 kfree(p);
}
