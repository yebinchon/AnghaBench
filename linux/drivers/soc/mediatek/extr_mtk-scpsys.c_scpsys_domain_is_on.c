
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct scp_domain {TYPE_2__* data; struct scp* scp; } ;
struct TYPE_3__ {scalar_t__ pwr_sta2nd_offs; scalar_t__ pwr_sta_offs; } ;
struct scp {TYPE_1__ ctrl_reg; scalar_t__ base; } ;
struct TYPE_4__ {int sta_mask; } ;


 int EINVAL ;
 int readl (scalar_t__) ;

__attribute__((used)) static int scpsys_domain_is_on(struct scp_domain *scpd)
{
 struct scp *scp = scpd->scp;

 u32 status = readl(scp->base + scp->ctrl_reg.pwr_sta_offs) &
      scpd->data->sta_mask;
 u32 status2 = readl(scp->base + scp->ctrl_reg.pwr_sta2nd_offs) &
      scpd->data->sta_mask;






 if (status && status2)
  return 1;
 if (!status && !status2)
  return 0;

 return -EINVAL;
}
