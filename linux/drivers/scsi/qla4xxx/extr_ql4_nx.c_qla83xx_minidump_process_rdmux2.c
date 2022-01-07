
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct scsi_qla_host {TYPE_1__* isp_ops; } ;
struct qla8xxx_minidump_entry_hdr {int dummy; } ;
struct qla83xx_minidump_entry_rdmux2 {scalar_t__ op_count; scalar_t__ select_value_stride; int read_addr; int select_value_mask; int select_addr_2; int select_addr_1; int select_value_2; int select_value_1; } ;
struct TYPE_2__ {int (* rd_reg_indirect ) (struct scsi_qla_host*,scalar_t__,scalar_t__*) ;int (* wr_reg_indirect ) (struct scsi_qla_host*,scalar_t__,scalar_t__) ;} ;


 void* cpu_to_le32 (scalar_t__) ;
 scalar_t__ le32_to_cpu (int ) ;
 int stub1 (struct scsi_qla_host*,scalar_t__,scalar_t__) ;
 int stub2 (struct scsi_qla_host*,scalar_t__,scalar_t__) ;
 int stub3 (struct scsi_qla_host*,scalar_t__,scalar_t__*) ;
 int stub4 (struct scsi_qla_host*,scalar_t__,scalar_t__) ;
 int stub5 (struct scsi_qla_host*,scalar_t__,scalar_t__) ;
 int stub6 (struct scsi_qla_host*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static void qla83xx_minidump_process_rdmux2(struct scsi_qla_host *ha,
    struct qla8xxx_minidump_entry_hdr *entry_hdr,
    uint32_t **d_ptr)
{
 uint32_t sel_val1, sel_val2, t_sel_val, data, i;
 uint32_t sel_addr1, sel_addr2, sel_val_mask, read_addr;
 struct qla83xx_minidump_entry_rdmux2 *rdmux2_hdr;
 uint32_t *data_ptr = *d_ptr;

 rdmux2_hdr = (struct qla83xx_minidump_entry_rdmux2 *)entry_hdr;
 sel_val1 = le32_to_cpu(rdmux2_hdr->select_value_1);
 sel_val2 = le32_to_cpu(rdmux2_hdr->select_value_2);
 sel_addr1 = le32_to_cpu(rdmux2_hdr->select_addr_1);
 sel_addr2 = le32_to_cpu(rdmux2_hdr->select_addr_2);
 sel_val_mask = le32_to_cpu(rdmux2_hdr->select_value_mask);
 read_addr = le32_to_cpu(rdmux2_hdr->read_addr);

 for (i = 0; i < rdmux2_hdr->op_count; i++) {
  ha->isp_ops->wr_reg_indirect(ha, sel_addr1, sel_val1);
  t_sel_val = sel_val1 & sel_val_mask;
  *data_ptr++ = cpu_to_le32(t_sel_val);

  ha->isp_ops->wr_reg_indirect(ha, sel_addr2, t_sel_val);
  ha->isp_ops->rd_reg_indirect(ha, read_addr, &data);

  *data_ptr++ = cpu_to_le32(data);

  ha->isp_ops->wr_reg_indirect(ha, sel_addr1, sel_val2);
  t_sel_val = sel_val2 & sel_val_mask;
  *data_ptr++ = cpu_to_le32(t_sel_val);

  ha->isp_ops->wr_reg_indirect(ha, sel_addr2, t_sel_val);
  ha->isp_ops->rd_reg_indirect(ha, read_addr, &data);

  *data_ptr++ = cpu_to_le32(data);

  sel_val1 += rdmux2_hdr->select_value_stride;
  sel_val2 += rdmux2_hdr->select_value_stride;
 }

 *d_ptr = data_ptr;
}
