
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int update_time_work; } ;


 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static inline void pqi_schedule_update_time_worker(
 struct pqi_ctrl_info *ctrl_info)
{
 schedule_delayed_work(&ctrl_info->update_time_work, 0);
}
