
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int scsi_qla_host_t ;


 int HZ ;
 int QLA83XX_FW_HEARTBEAT ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int jiffies ;
 int msleep (int) ;
 int ql_dbg (int ,int *,int,char*) ;
 int ql_dbg_p3p ;
 int qla83xx_idc_lock (int *,int ) ;
 int qla83xx_idc_unlock (int *,int ) ;
 int qla83xx_rd_reg (int *,int ,scalar_t__*) ;
 scalar_t__ time_after (int,unsigned long) ;

__attribute__((used)) static int
qla83xx_check_nic_core_fw_alive(scsi_qla_host_t *base_vha)
{
 int rval = QLA_SUCCESS;
 unsigned long heart_beat_wait = jiffies + (1 * HZ);
 uint32_t heart_beat_counter1, heart_beat_counter2;

 do {
  if (time_after(jiffies, heart_beat_wait)) {
   ql_dbg(ql_dbg_p3p, base_vha, 0xb07c,
       "Nic Core f/w is not alive.\n");
   rval = QLA_FUNCTION_FAILED;
   break;
  }

  qla83xx_idc_lock(base_vha, 0);
  qla83xx_rd_reg(base_vha, QLA83XX_FW_HEARTBEAT,
      &heart_beat_counter1);
  qla83xx_idc_unlock(base_vha, 0);
  msleep(100);
  qla83xx_idc_lock(base_vha, 0);
  qla83xx_rd_reg(base_vha, QLA83XX_FW_HEARTBEAT,
      &heart_beat_counter2);
  qla83xx_idc_unlock(base_vha, 0);
 } while (heart_beat_counter1 == heart_beat_counter2);

 return rval;
}
