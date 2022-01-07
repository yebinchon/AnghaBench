
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_15__ {scalar_t__ nic_core_reset_owner; } ;
struct qla_hw_data {int portnum; TYPE_1__ flags; int fcoe_reset_timeout; int fcoe_dev_init_timeout; } ;
struct TYPE_16__ {struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
typedef int config ;


 int QLA83XX_IDC_DEV_STATE ;
 int QLA83XX_IDC_INITIALIZATION_TIMEOUT ;
 int QLA83XX_IDC_LOCK_RECOVERY ;
 int QLA83XX_IDC_MAJOR_VERSION ;
 int QLA83XX_IDC_MINOR_VERSION ;
 int QLA83XX_IDC_RESET_ACK_TIMEOUT ;
 scalar_t__ QLA83XX_SUPP_IDC_MAJOR_VERSION ;
 int QLA83XX_SUPP_IDC_MINOR_VERSION ;
 scalar_t__ QLA8XXX_DEV_READY ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int __qla83xx_clear_drv_presence (TYPE_2__*) ;
 int __qla83xx_set_drv_presence (TYPE_2__*) ;
 int memset (int *,int ,int) ;
 int ql_dbg (int ,TYPE_2__*,int,char*) ;
 int ql_dbg_p3p ;
 int ql_log (int ,TYPE_2__*,int,char*,scalar_t__,scalar_t__) ;
 int ql_log_warn ;
 int qla81xx_get_port_config (TYPE_2__*,int *) ;
 int qla83xx_idc_lock (TYPE_2__*,int ) ;
 int qla83xx_idc_state_handler (TYPE_2__*) ;
 int qla83xx_idc_unlock (TYPE_2__*,int ) ;
 int qla83xx_rd_reg (TYPE_2__*,int ,scalar_t__*) ;
 int qla83xx_reset_ownership (TYPE_2__*) ;
 int qla83xx_wr_reg (TYPE_2__*,int ,scalar_t__) ;

__attribute__((used)) static int
qla83xx_nic_core_fw_load(scsi_qla_host_t *vha)
{
 int rval = QLA_SUCCESS;
 struct qla_hw_data *ha = vha->hw;
 uint32_t idc_major_ver, idc_minor_ver;
 uint16_t config[4];

 qla83xx_idc_lock(vha, 0);




 ha->fcoe_dev_init_timeout = QLA83XX_IDC_INITIALIZATION_TIMEOUT;
 ha->fcoe_reset_timeout = QLA83XX_IDC_RESET_ACK_TIMEOUT;


 if (__qla83xx_set_drv_presence(vha) != QLA_SUCCESS) {
  ql_dbg(ql_dbg_p3p, vha, 0xb077,
      "Error while setting DRV-Presence.\n");
  rval = QLA_FUNCTION_FAILED;
  goto exit;
 }


 qla83xx_reset_ownership(vha);







 qla83xx_rd_reg(vha, QLA83XX_IDC_MAJOR_VERSION, &idc_major_ver);
 if (ha->flags.nic_core_reset_owner) {

  idc_major_ver = QLA83XX_SUPP_IDC_MAJOR_VERSION;
  qla83xx_wr_reg(vha, QLA83XX_IDC_MAJOR_VERSION, idc_major_ver);


  qla83xx_wr_reg(vha, QLA83XX_IDC_LOCK_RECOVERY, 0);
 } else if (idc_major_ver != QLA83XX_SUPP_IDC_MAJOR_VERSION) {




  ql_log(ql_log_warn, vha, 0xb07d,
      "Failing load, idc_major_ver=%d, expected_major_ver=%d.\n",
      idc_major_ver, QLA83XX_SUPP_IDC_MAJOR_VERSION);
  __qla83xx_clear_drv_presence(vha);
  rval = QLA_FUNCTION_FAILED;
  goto exit;
 }

 qla83xx_rd_reg(vha, QLA83XX_IDC_MINOR_VERSION, &idc_minor_ver);
 idc_minor_ver |= (QLA83XX_SUPP_IDC_MINOR_VERSION << (ha->portnum * 2));
 qla83xx_wr_reg(vha, QLA83XX_IDC_MINOR_VERSION, idc_minor_ver);

 if (ha->flags.nic_core_reset_owner) {
  memset(config, 0, sizeof(config));
  if (!qla81xx_get_port_config(vha, config))
   qla83xx_wr_reg(vha, QLA83XX_IDC_DEV_STATE,
       QLA8XXX_DEV_READY);
 }

 rval = qla83xx_idc_state_handler(vha);

exit:
 qla83xx_idc_unlock(vha, 0);

 return rval;
}
