
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int pqi_mode_enabled; int controller_online; } ;


 int PQI_MODE ;
 int PQI_SOFT_RESET_ABORT ;
 int pqi_clear_soft_reset_status (struct pqi_ctrl_info*,int ) ;
 int pqi_ctrl_unblock_requests (struct pqi_ctrl_info*) ;
 int pqi_ofa_free_host_buffer (struct pqi_ctrl_info*) ;
 int pqi_save_ctrl_mode (struct pqi_ctrl_info*,int ) ;
 int pqi_scan_scsi_devices (struct pqi_ctrl_info*) ;
 int pqi_schedule_update_time_worker (struct pqi_ctrl_info*) ;
 int pqi_start_heartbeat_timer (struct pqi_ctrl_info*) ;

__attribute__((used)) static void pqi_ofa_ctrl_unquiesce(struct pqi_ctrl_info *ctrl_info)
{
 pqi_ofa_free_host_buffer(ctrl_info);
 ctrl_info->pqi_mode_enabled = 1;
 pqi_save_ctrl_mode(ctrl_info, PQI_MODE);
 ctrl_info->controller_online = 1;
 pqi_ctrl_unblock_requests(ctrl_info);
 pqi_start_heartbeat_timer(ctrl_info);
 pqi_schedule_update_time_worker(ctrl_info);
 pqi_clear_soft_reset_status(ctrl_info,
  PQI_SOFT_RESET_ABORT);
 pqi_scan_scsi_devices(ctrl_info);
}
