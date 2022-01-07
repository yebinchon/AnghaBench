
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int ithresh; } ;
struct TYPE_4__ {TYPE_1__ dqrr; } ;
struct qman_portal {TYPE_2__ p; } ;


 int EINVAL ;
 int qm_dqrr_set_ithresh (TYPE_2__*,int ) ;

int qman_dqrr_set_ithresh(struct qman_portal *portal, u8 ithresh)
{
 int res;

 if (!portal)
  return -EINVAL;

 res = qm_dqrr_set_ithresh(&portal->p, ithresh);
 if (res)
  return res;

 portal->p.dqrr.ithresh = ithresh;

 return 0;
}
