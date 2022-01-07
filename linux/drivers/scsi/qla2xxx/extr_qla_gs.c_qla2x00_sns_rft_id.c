
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int* param; } ;
struct TYPE_14__ {int* rft_data; TYPE_3__ cmd; } ;
struct sns_cmd_pkt {TYPE_4__ p; } ;
struct qla_hw_data {int sns_cmd_dma; } ;
struct TYPE_11__ {int al_pa; int area; int domain; } ;
struct TYPE_12__ {TYPE_1__ b; } ;
struct TYPE_15__ {TYPE_2__ d_id; struct qla_hw_data* hw; } ;
typedef TYPE_5__ scsi_qla_host_t ;


 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int RFT_ID_CMD ;
 int RFT_ID_SNS_CMD_SIZE ;
 int RFT_ID_SNS_DATA_SIZE ;
 int RFT_ID_SNS_SCMD_LEN ;
 int ql_dbg (scalar_t__,TYPE_5__*,int,char*,...) ;
 scalar_t__ ql_dbg_buffer ;
 scalar_t__ ql_dbg_disc ;
 int ql_dump_buffer (scalar_t__,TYPE_5__*,int,int*,int) ;
 struct sns_cmd_pkt* qla2x00_prep_sns_cmd (TYPE_5__*,int ,int ,int ) ;
 int qla2x00_send_sns (TYPE_5__*,int ,int,int) ;

__attribute__((used)) static int
qla2x00_sns_rft_id(scsi_qla_host_t *vha)
{
 int rval;
 struct qla_hw_data *ha = vha->hw;
 struct sns_cmd_pkt *sns_cmd;



 sns_cmd = qla2x00_prep_sns_cmd(vha, RFT_ID_CMD, RFT_ID_SNS_SCMD_LEN,
     RFT_ID_SNS_DATA_SIZE);


 sns_cmd->p.cmd.param[0] = vha->d_id.b.al_pa;
 sns_cmd->p.cmd.param[1] = vha->d_id.b.area;
 sns_cmd->p.cmd.param[2] = vha->d_id.b.domain;

 sns_cmd->p.cmd.param[5] = 0x01;


 rval = qla2x00_send_sns(vha, ha->sns_cmd_dma, RFT_ID_SNS_CMD_SIZE / 2,
     sizeof(struct sns_cmd_pkt));
 if (rval != QLA_SUCCESS) {

  ql_dbg(ql_dbg_disc, vha, 0x2060,
      "RFT_ID Send SNS failed (%d).\n", rval);
 } else if (sns_cmd->p.rft_data[8] != 0x80 ||
     sns_cmd->p.rft_data[9] != 0x02) {
  ql_dbg(ql_dbg_disc + ql_dbg_buffer, vha, 0x2083,
      "RFT_ID failed, rejected request rft_rsp:\n");
  ql_dump_buffer(ql_dbg_disc + ql_dbg_buffer, vha, 0x2080,
      sns_cmd->p.rft_data, 16);
  rval = QLA_FUNCTION_FAILED;
 } else {
  ql_dbg(ql_dbg_disc, vha, 0x2073,
      "RFT_ID exiting normally.\n");
 }

 return (rval);
}
