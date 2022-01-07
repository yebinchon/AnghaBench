
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int heartbeat_timer; } ;


 int del_timer_sync (int *) ;

__attribute__((used)) static inline void pqi_stop_heartbeat_timer(struct pqi_ctrl_info *ctrl_info)
{
 del_timer_sync(&ctrl_info->heartbeat_timer);
}
