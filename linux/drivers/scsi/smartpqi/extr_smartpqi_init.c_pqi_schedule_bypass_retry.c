
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int raid_bypass_retry_work; } ;


 int pqi_ctrl_blocked (struct pqi_ctrl_info*) ;
 int schedule_work (int *) ;

__attribute__((used)) static inline void pqi_schedule_bypass_retry(struct pqi_ctrl_info *ctrl_info)
{
 if (!pqi_ctrl_blocked(ctrl_info))
  schedule_work(&ctrl_info->raid_bypass_retry_work);
}
