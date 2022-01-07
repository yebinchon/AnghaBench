
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q6v5 {int dummy; } ;
struct device {int dummy; } ;


 int dev_pm_domain_detach (struct device*,int) ;

__attribute__((used)) static void q6v5_pds_detach(struct q6v5 *qproc, struct device **pds,
       size_t pd_count)
{
 int i;

 for (i = 0; i < pd_count; i++)
  dev_pm_domain_detach(pds[i], 0);
}
