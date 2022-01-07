
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct qla_hw_data {scalar_t__ portnum; } ;
struct TYPE_7__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int BIT_7 ;
 int QLA83XX_DRIVER_LOCKID ;
 int QLA83XX_DRIVER_UNLOCK ;
 scalar_t__ QLA_SUCCESS ;
 int ql_dbg (int ,TYPE_1__*,int,char*,int) ;
 int ql_dbg_p3p ;
 scalar_t__ qla83xx_access_control (TYPE_1__*,int,int ,int ,int *) ;
 scalar_t__ qla83xx_rd_reg (TYPE_1__*,int ,scalar_t__*) ;
 int qla83xx_wait_logic () ;
 int qla83xx_wr_reg (TYPE_1__*,int ,int) ;

void
qla83xx_idc_unlock(scsi_qla_host_t *base_vha, uint16_t requester_id)
{



 uint16_t retry;
 uint32_t data;
 struct qla_hw_data *ha = base_vha->hw;




 retry = 0;
retry_unlock:
 if (qla83xx_rd_reg(base_vha, QLA83XX_DRIVER_LOCKID, &data)
     == QLA_SUCCESS) {
  if (data == ha->portnum) {
   qla83xx_rd_reg(base_vha, QLA83XX_DRIVER_UNLOCK, &data);

   qla83xx_wr_reg(base_vha, QLA83XX_DRIVER_LOCKID, 0xff);
  } else if (retry < 10) {



   qla83xx_wait_logic();
   retry++;
   ql_dbg(ql_dbg_p3p, base_vha, 0xb064,
       "Failed to release IDC lock, retrying=%d\n", retry);
   goto retry_unlock;
  }
 } else if (retry < 10) {

  qla83xx_wait_logic();
  retry++;
  ql_dbg(ql_dbg_p3p, base_vha, 0xb065,
      "Failed to read drv-lockid, retrying=%d\n", retry);
  goto retry_unlock;
 }

 return;
}
