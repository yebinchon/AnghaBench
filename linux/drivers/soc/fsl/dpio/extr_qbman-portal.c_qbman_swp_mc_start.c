
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qbman_swp {TYPE_1__* desc; } ;
struct TYPE_2__ {int qman_version; } ;


 int QBMAN_CENA_SWP_CR ;
 int QBMAN_CENA_SWP_CR_MEM ;
 int QMAN_REV_5000 ;
 int QMAN_REV_MASK ;
 void* qbman_get_cmd (struct qbman_swp*,int ) ;

void *qbman_swp_mc_start(struct qbman_swp *p)
{
 if ((p->desc->qman_version & QMAN_REV_MASK) < QMAN_REV_5000)
  return qbman_get_cmd(p, QBMAN_CENA_SWP_CR);
 else
  return qbman_get_cmd(p, QBMAN_CENA_SWP_CR_MEM);
}
