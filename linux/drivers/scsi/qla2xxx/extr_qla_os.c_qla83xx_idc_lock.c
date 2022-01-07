
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct qla_hw_data {int portnum; } ;
struct TYPE_8__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int QLA83XX_DRIVER_LOCK ;
 int QLA83XX_DRIVER_LOCKID ;
 scalar_t__ QLA_SUCCESS ;
 int ql_dbg (int ,TYPE_1__*,int,char*,scalar_t__) ;
 int ql_dbg_p3p ;
 int ql_log (int ,TYPE_1__*,int,char*) ;
 int ql_log_warn ;
 scalar_t__ qla83xx_idc_lock_recovery (TYPE_1__*) ;
 scalar_t__ qla83xx_rd_reg (TYPE_1__*,int ,scalar_t__*) ;
 int qla83xx_wait_logic () ;
 int qla83xx_wr_reg (TYPE_1__*,int ,int ) ;

void
qla83xx_idc_lock(scsi_qla_host_t *base_vha, uint16_t requester_id)
{
 uint32_t data;
 uint32_t lock_owner;
 struct qla_hw_data *ha = base_vha->hw;


retry_lock:
 if (qla83xx_rd_reg(base_vha, QLA83XX_DRIVER_LOCK, &data)
     == QLA_SUCCESS) {
  if (data) {

   qla83xx_wr_reg(base_vha, QLA83XX_DRIVER_LOCKID,
       ha->portnum);
  } else {
   qla83xx_rd_reg(base_vha, QLA83XX_DRIVER_LOCKID,
       &lock_owner);
   ql_dbg(ql_dbg_p3p, base_vha, 0xb063,
       "Failed to acquire IDC lock, acquired by %d, "
       "retrying...\n", lock_owner);


   if (qla83xx_idc_lock_recovery(base_vha)
       == QLA_SUCCESS) {
    qla83xx_wait_logic();
    goto retry_lock;
   } else
    ql_log(ql_log_warn, base_vha, 0xb075,
        "IDC Lock recovery FAILED.\n");
  }

 }

 return;
}
