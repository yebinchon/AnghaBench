#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct scsi_qla_host {TYPE_1__* isp_ops; } ;
struct qla8xxx_minidump_entry_hdr {int dummy; } ;
struct qla83xx_minidump_entry_rdmux2 {scalar_t__ op_count; scalar_t__ select_value_stride; int /*<<< orphan*/  read_addr; int /*<<< orphan*/  select_value_mask; int /*<<< orphan*/  select_addr_2; int /*<<< orphan*/  select_addr_1; int /*<<< orphan*/  select_value_2; int /*<<< orphan*/  select_value_1; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* rd_reg_indirect ) (struct scsi_qla_host*,scalar_t__,scalar_t__*) ;int /*<<< orphan*/  (* wr_reg_indirect ) (struct scsi_qla_host*,scalar_t__,scalar_t__) ;} ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_qla_host*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_qla_host*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_qla_host*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_qla_host*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_qla_host*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_qla_host*,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static void FUNC8(struct scsi_qla_host *ha,
				struct qla8xxx_minidump_entry_hdr *entry_hdr,
				uint32_t **d_ptr)
{
	uint32_t sel_val1, sel_val2, t_sel_val, data, i;
	uint32_t sel_addr1, sel_addr2, sel_val_mask, read_addr;
	struct qla83xx_minidump_entry_rdmux2 *rdmux2_hdr;
	uint32_t *data_ptr = *d_ptr;

	rdmux2_hdr = (struct qla83xx_minidump_entry_rdmux2 *)entry_hdr;
	sel_val1 = FUNC1(rdmux2_hdr->select_value_1);
	sel_val2 = FUNC1(rdmux2_hdr->select_value_2);
	sel_addr1 = FUNC1(rdmux2_hdr->select_addr_1);
	sel_addr2 = FUNC1(rdmux2_hdr->select_addr_2);
	sel_val_mask = FUNC1(rdmux2_hdr->select_value_mask);
	read_addr = FUNC1(rdmux2_hdr->read_addr);

	for (i = 0; i < rdmux2_hdr->op_count; i++) {
		ha->isp_ops->wr_reg_indirect(ha, sel_addr1, sel_val1);
		t_sel_val = sel_val1 & sel_val_mask;
		*data_ptr++ = FUNC0(t_sel_val);

		ha->isp_ops->wr_reg_indirect(ha, sel_addr2, t_sel_val);
		ha->isp_ops->rd_reg_indirect(ha, read_addr, &data);

		*data_ptr++ = FUNC0(data);

		ha->isp_ops->wr_reg_indirect(ha, sel_addr1, sel_val2);
		t_sel_val = sel_val2 & sel_val_mask;
		*data_ptr++ = FUNC0(t_sel_val);

		ha->isp_ops->wr_reg_indirect(ha, sel_addr2, t_sel_val);
		ha->isp_ops->rd_reg_indirect(ha, read_addr, &data);

		*data_ptr++ = FUNC0(data);

		sel_val1 += rdmux2_hdr->select_value_stride;
		sel_val2 += rdmux2_hdr->select_value_stride;
	}

	*d_ptr = data_ptr;
}