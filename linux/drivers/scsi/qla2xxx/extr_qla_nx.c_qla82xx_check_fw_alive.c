
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int fw_heartbeat_counter; int seconds_since_last_heartbeat; int hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int QLA82XX_PEG_ALIVE_COUNTER ;
 int ql_dbg (int ,TYPE_1__*,int,char*,int) ;
 int ql_dbg_timer ;
 int qla82xx_rd_32 (int ,int ) ;

__attribute__((used)) static int
qla82xx_check_fw_alive(scsi_qla_host_t *vha)
{
 uint32_t fw_heartbeat_counter;
 int status = 0;

 fw_heartbeat_counter = qla82xx_rd_32(vha->hw,
  QLA82XX_PEG_ALIVE_COUNTER);

 if (fw_heartbeat_counter == 0xffffffff) {
  ql_dbg(ql_dbg_timer, vha, 0x6003,
      "FW heartbeat counter is 0xffffffff, "
      "returning status=%d.\n", status);
  return status;
 }
 if (vha->fw_heartbeat_counter == fw_heartbeat_counter) {
  vha->seconds_since_last_heartbeat++;

  if (vha->seconds_since_last_heartbeat == 2) {
   vha->seconds_since_last_heartbeat = 0;
   status = 1;
  }
 } else
  vha->seconds_since_last_heartbeat = 0;
 vha->fw_heartbeat_counter = fw_heartbeat_counter;
 if (status)
  ql_dbg(ql_dbg_timer, vha, 0x6004,
      "Returning status=%d.\n", status);
 return status;
}
