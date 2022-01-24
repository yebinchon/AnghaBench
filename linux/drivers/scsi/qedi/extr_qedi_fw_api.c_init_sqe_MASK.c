#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct scsi_sgl_task_params {int /*<<< orphan*/  num_sges; int /*<<< orphan*/  small_mid_sge; } ;
struct TYPE_3__ {int sge_len; } ;
struct scsi_initiator_cmd_params {TYPE_1__ extended_cdb_sge; } ;
struct scsi_dif_task_params {int dummy; } ;
struct iscsi_task_params {int tx_io_size; TYPE_2__* sqe; int /*<<< orphan*/  itid; } ;
struct iscsi_common_hdr {int /*<<< orphan*/  itt; int /*<<< orphan*/  hdr_first_byte; int /*<<< orphan*/  hdr_second_dword; } ;
typedef  enum iscsi_task_type { ____Placeholder_iscsi_task_type } iscsi_task_type ;
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  contlen_cdbsize; int /*<<< orphan*/  prot_flags; int /*<<< orphan*/  task_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISCSI_CMD_HDR_TOTAL_AHS_LEN ; 
 int /*<<< orphan*/  ISCSI_COMMON_HDR_OPCODE ; 
 int /*<<< orphan*/  ISCSI_OPCODE_NOP_IN ; 
 int /*<<< orphan*/  ISCSI_OPCODE_TEXT_RESPONSE ; 
#define  ISCSI_TASK_TYPE_INITIATOR_READ 131 
#define  ISCSI_TASK_TYPE_INITIATOR_WRITE 130 
#define  ISCSI_TASK_TYPE_LOGIN_RESPONSE 129 
#define  ISCSI_TASK_TYPE_MIDPATH 128 
 int /*<<< orphan*/  ISCSI_TTT_ALL_ONES ; 
 int /*<<< orphan*/  ISCSI_WQE_CDB_SIZE ; 
 int /*<<< orphan*/  ISCSI_WQE_CONT_LEN ; 
 int /*<<< orphan*/  ISCSI_WQE_NUM_SGES ; 
 int ISCSI_WQE_NUM_SGES_SLOWIO ; 
 int /*<<< orphan*/  ISCSI_WQE_RESPONSE ; 
 int ISCSI_WQE_TYPE_LOGIN ; 
 int ISCSI_WQE_TYPE_MIDDLE_PATH ; 
 int ISCSI_WQE_TYPE_NORMAL ; 
 int ISCSI_WQE_TYPE_TASK_CLEANUP ; 
 int /*<<< orphan*/  ISCSI_WQE_WQE_TYPE ; 
 int /*<<< orphan*/  SCSI_NUM_SGES_SLOW_SGL_THR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct iscsi_task_params*,int,struct scsi_sgl_task_params*,struct scsi_dif_task_params*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct scsi_dif_task_params*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct iscsi_task_params *task_params,
		     struct scsi_sgl_task_params *sgl_task_params,
		     struct scsi_dif_task_params *dif_task_params,
		     struct iscsi_common_hdr *pdu_header,
		     struct scsi_initiator_cmd_params *cmd_params,
		     enum iscsi_task_type task_type,
		     bool is_cleanup)
{
	if (!task_params->sqe)
		return;

	FUNC5(task_params->sqe, 0, sizeof(*task_params->sqe));
	task_params->sqe->task_id = FUNC3(task_params->itid);
	if (is_cleanup) {
		FUNC1(task_params->sqe->flags, ISCSI_WQE_WQE_TYPE,
			  ISCSI_WQE_TYPE_TASK_CLEANUP);
		return;
	}

	switch (task_type) {
	case ISCSI_TASK_TYPE_INITIATOR_WRITE:
	{
		u32 buf_size = 0;
		u32 num_sges = 0;

		FUNC4(&task_params->sqe->prot_flags,
				       dif_task_params);

		FUNC1(task_params->sqe->flags, ISCSI_WQE_WQE_TYPE,
			  ISCSI_WQE_TYPE_NORMAL);

		if (task_params->tx_io_size) {
			buf_size = FUNC2(task_params, task_type,
						     sgl_task_params,
						     dif_task_params);

			if (FUNC7(sgl_task_params->num_sges,
					     sgl_task_params->small_mid_sge))
				num_sges = ISCSI_WQE_NUM_SGES_SLOWIO;
			else
				num_sges = FUNC6(sgl_task_params->num_sges,
					       (u16)SCSI_NUM_SGES_SLOW_SGL_THR);
		}

		FUNC1(task_params->sqe->flags, ISCSI_WQE_NUM_SGES,
			  num_sges);
		FUNC1(task_params->sqe->contlen_cdbsize, ISCSI_WQE_CONT_LEN,
			  buf_size);

		if (FUNC0(pdu_header->hdr_second_dword,
			      ISCSI_CMD_HDR_TOTAL_AHS_LEN))
			FUNC1(task_params->sqe->contlen_cdbsize,
				  ISCSI_WQE_CDB_SIZE,
				  cmd_params->extended_cdb_sge.sge_len);
	}
		break;
	case ISCSI_TASK_TYPE_INITIATOR_READ:
		FUNC1(task_params->sqe->flags, ISCSI_WQE_WQE_TYPE,
			  ISCSI_WQE_TYPE_NORMAL);

		if (FUNC0(pdu_header->hdr_second_dword,
			      ISCSI_CMD_HDR_TOTAL_AHS_LEN))
			FUNC1(task_params->sqe->contlen_cdbsize,
				  ISCSI_WQE_CDB_SIZE,
				  cmd_params->extended_cdb_sge.sge_len);
		break;
	case ISCSI_TASK_TYPE_LOGIN_RESPONSE:
	case ISCSI_TASK_TYPE_MIDPATH:
	{
		bool advance_statsn = true;

		if (task_type == ISCSI_TASK_TYPE_LOGIN_RESPONSE)
			FUNC1(task_params->sqe->flags, ISCSI_WQE_WQE_TYPE,
				  ISCSI_WQE_TYPE_LOGIN);
		else
			FUNC1(task_params->sqe->flags, ISCSI_WQE_WQE_TYPE,
				  ISCSI_WQE_TYPE_MIDDLE_PATH);

		if (task_type == ISCSI_TASK_TYPE_MIDPATH) {
			u8 opcode = FUNC0(pdu_header->hdr_first_byte,
					      ISCSI_COMMON_HDR_OPCODE);

			if (opcode != ISCSI_OPCODE_TEXT_RESPONSE &&
			    (opcode != ISCSI_OPCODE_NOP_IN ||
			    pdu_header->itt == ISCSI_TTT_ALL_ONES))
				advance_statsn = false;
		}

		FUNC1(task_params->sqe->flags, ISCSI_WQE_RESPONSE,
			  advance_statsn ? 1 : 0);

		if (task_params->tx_io_size) {
			FUNC1(task_params->sqe->contlen_cdbsize,
				  ISCSI_WQE_CONT_LEN, task_params->tx_io_size);

		if (FUNC7(sgl_task_params->num_sges,
				     sgl_task_params->small_mid_sge))
			FUNC1(task_params->sqe->flags, ISCSI_WQE_NUM_SGES,
				  ISCSI_WQE_NUM_SGES_SLOWIO);
		else
			FUNC1(task_params->sqe->flags, ISCSI_WQE_NUM_SGES,
				  FUNC6(sgl_task_params->num_sges,
				      (u16)SCSI_NUM_SGES_SLOW_SGL_THR));
		}
	}
		break;
	default:
		break;
	}
}