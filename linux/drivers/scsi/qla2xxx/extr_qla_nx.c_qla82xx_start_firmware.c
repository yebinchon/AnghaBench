
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct qla_hw_data {int link_width; int pdev; } ;
struct TYPE_5__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int CRB_CMDPEG_STATE ;
 int CRB_DMA_SHIFT ;
 int CRB_RCVPEG_STATE ;
 int PCI_EXP_LNKSTA ;
 int QLA82XX_DMA_SHIFT_VALUE ;
 int QLA82XX_PEG_HALT_STATUS1 ;
 int QLA82XX_PEG_HALT_STATUS2 ;
 int QLA_FUNCTION_FAILED ;
 scalar_t__ QLA_SUCCESS ;
 int pcie_capability_read_word (int ,int ,int*) ;
 int ql_log (int ,TYPE_1__*,int,char*) ;
 int ql_log_fatal ;
 scalar_t__ qla82xx_check_cmdpeg_state (struct qla_hw_data*) ;
 int qla82xx_check_rcvpeg_state (struct qla_hw_data*) ;
 scalar_t__ qla82xx_load_fw (TYPE_1__*) ;
 int qla82xx_wr_32 (struct qla_hw_data*,int ,int ) ;

int
qla82xx_start_firmware(scsi_qla_host_t *vha)
{
 uint16_t lnk;
 struct qla_hw_data *ha = vha->hw;


 qla82xx_wr_32(ha, CRB_DMA_SHIFT, QLA82XX_DMA_SHIFT_VALUE);




 qla82xx_wr_32(ha, CRB_CMDPEG_STATE, 0);
 qla82xx_wr_32(ha, CRB_RCVPEG_STATE, 0);


 qla82xx_wr_32(ha, QLA82XX_PEG_HALT_STATUS1, 0);
 qla82xx_wr_32(ha, QLA82XX_PEG_HALT_STATUS2, 0);

 if (qla82xx_load_fw(vha) != QLA_SUCCESS) {
  ql_log(ql_log_fatal, vha, 0x00a7,
      "Error trying to start fw.\n");
  return QLA_FUNCTION_FAILED;
 }


 if (qla82xx_check_cmdpeg_state(ha) != QLA_SUCCESS) {
  ql_log(ql_log_fatal, vha, 0x00aa,
      "Error during card handshake.\n");
  return QLA_FUNCTION_FAILED;
 }


 pcie_capability_read_word(ha->pdev, PCI_EXP_LNKSTA, &lnk);
 ha->link_width = (lnk >> 4) & 0x3f;


 return qla82xx_check_rcvpeg_state(ha);
}
