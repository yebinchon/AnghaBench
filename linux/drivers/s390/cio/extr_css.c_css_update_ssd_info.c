
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pmcw; } ;
struct subchannel {int ssd_info; TYPE_1__ schib; int schid; } ;


 int chsc_get_ssd_info (int ,int *) ;
 int ssd_from_pmcw (int *,int *) ;
 int ssd_register_chpids (int *) ;

void css_update_ssd_info(struct subchannel *sch)
{
 int ret;

 ret = chsc_get_ssd_info(sch->schid, &sch->ssd_info);
 if (ret)
  ssd_from_pmcw(&sch->ssd_info, &sch->schib.pmcw);

 ssd_register_chpids(&sch->ssd_info);
}
