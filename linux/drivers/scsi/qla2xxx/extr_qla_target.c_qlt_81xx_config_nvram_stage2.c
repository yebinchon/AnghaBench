
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct TYPE_2__ {int tgt_node_name; scalar_t__ node_name_set; } ;
struct qla_hw_data {TYPE_1__ tgt; } ;
struct init_cb_81xx {int firmware_options_1; int node_name; } ;


 int BIT_14 ;
 int QLA_TGT_MODE_ENABLED () ;
 int WWN_SIZE ;
 int cpu_to_le32 (int ) ;
 int memcpy (int ,int ,int ) ;

void
qlt_81xx_config_nvram_stage2(struct scsi_qla_host *vha,
 struct init_cb_81xx *icb)
{
 struct qla_hw_data *ha = vha->hw;

 if (!QLA_TGT_MODE_ENABLED())
  return;

 if (ha->tgt.node_name_set) {
  memcpy(icb->node_name, ha->tgt.tgt_node_name, WWN_SIZE);
  icb->firmware_options_1 |= cpu_to_le32(BIT_14);
 }
}
