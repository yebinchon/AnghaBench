
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int dummy; } ;


 int PQI_RESCAN_WORK_DELAY ;
 int pqi_schedule_rescan_worker_with_delay (struct pqi_ctrl_info*,int ) ;

__attribute__((used)) static inline void pqi_schedule_rescan_worker_delayed(
 struct pqi_ctrl_info *ctrl_info)
{
 pqi_schedule_rescan_worker_with_delay(ctrl_info, PQI_RESCAN_WORK_DELAY);
}
