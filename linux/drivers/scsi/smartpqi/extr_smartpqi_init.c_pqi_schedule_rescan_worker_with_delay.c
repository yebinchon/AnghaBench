
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int rescan_work; } ;


 scalar_t__ pqi_ctrl_in_ofa (struct pqi_ctrl_info*) ;
 scalar_t__ pqi_ctrl_offline (struct pqi_ctrl_info*) ;
 int schedule_delayed_work (int *,unsigned long) ;

__attribute__((used)) static inline void pqi_schedule_rescan_worker_with_delay(
 struct pqi_ctrl_info *ctrl_info, unsigned long delay)
{
 if (pqi_ctrl_offline(ctrl_info))
  return;
 if (pqi_ctrl_in_ofa(ctrl_info))
  return;

 schedule_delayed_work(&ctrl_info->rescan_work, delay);
}
