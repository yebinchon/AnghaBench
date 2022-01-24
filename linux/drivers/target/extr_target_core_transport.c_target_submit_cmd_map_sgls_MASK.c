#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct se_session {struct se_portal_group* se_tpg; } ;
struct se_portal_group {int /*<<< orphan*/  se_tpg_tfo; } ;
struct se_cmd {int se_cmd_flags; int unknown_data_length; scalar_t__ data_direction; scalar_t__ t_prot_nents; struct scatterlist* t_prot_sg; int /*<<< orphan*/  cpuid; scalar_t__ se_sess; scalar_t__ se_tfo; } ;
struct scatterlist {int offset; int /*<<< orphan*/  length; } ;
typedef  scalar_t__ sense_reason_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DMA_FROM_DEVICE ; 
 int SCF_BIDI ; 
 int SCF_PASSTHROUGH_PROT_SG_TO_MEM_NOALLOC ; 
 int SCF_SCSI_DATA_CDB ; 
 int SCF_USE_CPUID ; 
 int TARGET_SCF_ACK_KREF ; 
 int TARGET_SCF_BIDI_OP ; 
 int TARGET_SCF_UNKNOWN_SIZE ; 
 int TARGET_SCF_USE_CPUID ; 
 int /*<<< orphan*/  WORK_CPU_UNBOUND ; 
 int /*<<< orphan*/  FUNC1 (struct se_cmd*) ; 
 int FUNC2 () ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*) ; 
 int FUNC7 (struct se_cmd*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct se_cmd*) ; 
 scalar_t__ FUNC9 (struct se_cmd*,unsigned char*) ; 
 scalar_t__ FUNC10 (struct se_cmd*,struct scatterlist*,scalar_t__,struct scatterlist*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct se_cmd*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC13 (struct se_cmd*,int /*<<< orphan*/ ,struct se_session*,scalar_t__,int,int,unsigned char*) ; 
 scalar_t__ FUNC14 (struct se_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct se_cmd*,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC16(struct se_cmd *se_cmd, struct se_session *se_sess,
		unsigned char *cdb, unsigned char *sense, u64 unpacked_lun,
		u32 data_length, int task_attr, int data_dir, int flags,
		struct scatterlist *sgl, u32 sgl_count,
		struct scatterlist *sgl_bidi, u32 sgl_bidi_count,
		struct scatterlist *sgl_prot, u32 sgl_prot_count)
{
	struct se_portal_group *se_tpg;
	sense_reason_t rc;
	int ret;

	se_tpg = se_sess->se_tpg;
	FUNC0(!se_tpg);
	FUNC0(se_cmd->se_tfo || se_cmd->se_sess);
	FUNC0(FUNC2());
	/*
	 * Initialize se_cmd for target operation.  From this point
	 * exceptions are handled by sending exception status via
	 * target_core_fabric_ops->queue_status() callback
	 */
	FUNC13(se_cmd, se_tpg->se_tpg_tfo, se_sess,
				data_length, data_dir, task_attr, sense);

	if (flags & TARGET_SCF_USE_CPUID)
		se_cmd->se_cmd_flags |= SCF_USE_CPUID;
	else
		se_cmd->cpuid = WORK_CPU_UNBOUND;

	if (flags & TARGET_SCF_UNKNOWN_SIZE)
		se_cmd->unknown_data_length = 1;
	/*
	 * Obtain struct se_cmd->cmd_kref reference and add new cmd to
	 * se_sess->sess_cmd_list.  A second kref_get here is necessary
	 * for fabrics using TARGET_SCF_ACK_KREF that expect a second
	 * kref_put() to happen during fabric packet acknowledgement.
	 */
	ret = FUNC7(se_cmd, flags & TARGET_SCF_ACK_KREF);
	if (ret)
		return ret;
	/*
	 * Signal bidirectional data payloads to target-core
	 */
	if (flags & TARGET_SCF_BIDI_OP)
		se_cmd->se_cmd_flags |= SCF_BIDI;
	/*
	 * Locate se_lun pointer and attach it to struct se_cmd
	 */
	rc = FUNC14(se_cmd, unpacked_lun);
	if (rc) {
		FUNC15(se_cmd, rc, 0);
		FUNC8(se_cmd);
		return 0;
	}

	rc = FUNC9(se_cmd, cdb);
	if (rc != 0) {
		FUNC11(se_cmd, rc);
		return 0;
	}

	/*
	 * Save pointers for SGLs containing protection information,
	 * if present.
	 */
	if (sgl_prot_count) {
		se_cmd->t_prot_sg = sgl_prot;
		se_cmd->t_prot_nents = sgl_prot_count;
		se_cmd->se_cmd_flags |= SCF_PASSTHROUGH_PROT_SG_TO_MEM_NOALLOC;
	}

	/*
	 * When a non zero sgl_count has been passed perform SGL passthrough
	 * mapping for pre-allocated fabric memory instead of having target
	 * core perform an internal SGL allocation..
	 */
	if (sgl_count != 0) {
		FUNC0(!sgl);

		/*
		 * A work-around for tcm_loop as some userspace code via
		 * scsi-generic do not memset their associated read buffers,
		 * so go ahead and do that here for type non-data CDBs.  Also
		 * note that this is currently guaranteed to be a single SGL
		 * for this case by target core in target_setup_cmd_from_cdb()
		 * -> transport_generic_cmd_sequencer().
		 */
		if (!(se_cmd->se_cmd_flags & SCF_SCSI_DATA_CDB) &&
		     se_cmd->data_direction == DMA_FROM_DEVICE) {
			unsigned char *buf = NULL;

			if (sgl)
				buf = FUNC3(FUNC6(sgl)) + sgl->offset;

			if (buf) {
				FUNC5(buf, 0, sgl->length);
				FUNC4(FUNC6(sgl));
			}
		}

		rc = FUNC10(se_cmd, sgl, sgl_count,
				sgl_bidi, sgl_bidi_count);
		if (rc != 0) {
			FUNC11(se_cmd, rc);
			return 0;
		}
	}

	/*
	 * Check if we need to delay processing because of ALUA
	 * Active/NonOptimized primary access state..
	 */
	FUNC1(se_cmd);

	FUNC12(se_cmd);
	return 0;
}