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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct scsi_dif_tuple {scalar_t__ app_tag; scalar_t__ ref_tag; scalar_t__ guard_tag; } ;
struct scsi_cmnd {int result; int /*<<< orphan*/  sense_buffer; } ;
struct scatterlist {int length; } ;
struct lpfc_io_buf {int prot_seg_cnt; struct scsi_cmnd* pCmd; } ;
struct lpfc_hba {int /*<<< orphan*/  bg_apptag_err_cnt; int /*<<< orphan*/  bg_reftag_err_cnt; int /*<<< orphan*/  bg_guard_err_cnt; } ;

/* Variables and functions */
 int BGS_APPTAG_ERR_MASK ; 
 int BGS_GUARD_ERR_MASK ; 
 int BGS_REFTAG_ERR_MASK ; 
 int DID_ABORT ; 
 int DRIVER_SENSE ; 
 int /*<<< orphan*/  ILLEGAL_REQUEST ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int LOG_BG ; 
 int LOG_FCP ; 
 int SAM_STAT_CHECK_CONDITION ; 
 int SCSI_PROT_NORMAL ; 
 int SCSI_PROT_READ_STRIP ; 
 int SCSI_PROT_WRITE_INSERT ; 
 scalar_t__ T10_PI_APP_ESCAPE ; 
 scalar_t__ T10_PI_REF_ESCAPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC3 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC4 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,int /*<<< orphan*/ ,int,char*,unsigned long,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC7 (struct scsi_cmnd*) ; 
 int FUNC8 (struct scsi_cmnd*) ; 
 struct scatterlist* FUNC9 (struct scsi_cmnd*) ; 
 struct scatterlist* FUNC10 (struct scsi_cmnd*) ; 
 struct scatterlist* FUNC11 (struct scatterlist*) ; 
 scalar_t__ FUNC12 (struct scatterlist*) ; 

__attribute__((used)) static void
FUNC13(struct lpfc_hba *phba, struct lpfc_io_buf *lpfc_cmd)
{
	struct scatterlist *sgpe; /* s/g prot entry */
	struct scatterlist *sgde; /* s/g data entry */
	struct scsi_cmnd *cmd = lpfc_cmd->pCmd;
	struct scsi_dif_tuple *src = NULL;
	uint8_t *data_src = NULL;
	uint16_t guard_tag;
	uint16_t start_app_tag, app_tag;
	uint32_t start_ref_tag, ref_tag;
	int prot, protsegcnt;
	int err_type, len, data_len;
	int chk_ref, chk_app, chk_guard;
	uint16_t sum;
	unsigned blksize;

	err_type = BGS_GUARD_ERR_MASK;
	sum = 0;
	guard_tag = 0;

	/* First check to see if there is protection data to examine */
	prot = FUNC8(cmd);
	if ((prot == SCSI_PROT_READ_STRIP) ||
	    (prot == SCSI_PROT_WRITE_INSERT) ||
	    (prot == SCSI_PROT_NORMAL))
		goto out;

	/* Currently the driver just supports ref_tag and guard_tag checking */
	chk_ref = 1;
	chk_app = 0;
	chk_guard = 0;

	/* Setup a ptr to the protection data provided by the SCSI host */
	sgpe = FUNC9(cmd);
	protsegcnt = lpfc_cmd->prot_seg_cnt;

	if (sgpe && protsegcnt) {

		/*
		 * We will only try to verify guard tag if the segment
		 * data length is a multiple of the blksize.
		 */
		sgde = FUNC10(cmd);
		blksize = FUNC3(cmd);
		data_src = (uint8_t *)FUNC12(sgde);
		data_len = sgde->length;
		if ((data_len & (blksize - 1)) == 0)
			chk_guard = 1;

		src = (struct scsi_dif_tuple *)FUNC12(sgpe);
		start_ref_tag = (uint32_t)FUNC7(cmd); /* Truncate LBA */
		start_app_tag = src->app_tag;
		len = sgpe->length;
		while (src && protsegcnt) {
			while (len) {

				/*
				 * First check to see if a protection data
				 * check is valid
				 */
				if ((src->ref_tag == T10_PI_REF_ESCAPE) ||
				    (src->app_tag == T10_PI_APP_ESCAPE)) {
					start_ref_tag++;
					goto skipit;
				}

				/* First Guard Tag checking */
				if (chk_guard) {
					guard_tag = src->guard_tag;
					if (FUNC4(cmd))
						sum = FUNC2(data_src,
								   blksize);
					else
						sum = FUNC1(data_src,
								  blksize);
					if ((guard_tag != sum)) {
						err_type = BGS_GUARD_ERR_MASK;
						goto out;
					}
				}

				/* Reference Tag checking */
				ref_tag = FUNC0(src->ref_tag);
				if (chk_ref && (ref_tag != start_ref_tag)) {
					err_type = BGS_REFTAG_ERR_MASK;
					goto out;
				}
				start_ref_tag++;

				/* App Tag checking */
				app_tag = src->app_tag;
				if (chk_app && (app_tag != start_app_tag)) {
					err_type = BGS_APPTAG_ERR_MASK;
					goto out;
				}
skipit:
				len -= sizeof(struct scsi_dif_tuple);
				if (len < 0)
					len = 0;
				src++;

				data_src += blksize;
				data_len -= blksize;

				/*
				 * Are we at the end of the Data segment?
				 * The data segment is only used for Guard
				 * tag checking.
				 */
				if (chk_guard && (data_len == 0)) {
					chk_guard = 0;
					sgde = FUNC11(sgde);
					if (!sgde)
						goto out;

					data_src = (uint8_t *)FUNC12(sgde);
					data_len = sgde->length;
					if ((data_len & (blksize - 1)) == 0)
						chk_guard = 1;
				}
			}

			/* Goto the next Protection data segment */
			sgpe = FUNC11(sgpe);
			if (sgpe) {
				src = (struct scsi_dif_tuple *)FUNC12(sgpe);
				len = sgpe->length;
			} else {
				src = NULL;
			}
			protsegcnt--;
		}
	}
out:
	if (err_type == BGS_GUARD_ERR_MASK) {
		FUNC6(1, cmd->sense_buffer, ILLEGAL_REQUEST,
					0x10, 0x1);
		cmd->result = DRIVER_SENSE << 24 | DID_ABORT << 16 |
			      SAM_STAT_CHECK_CONDITION;
		phba->bg_guard_err_cnt++;
		FUNC5(phba, KERN_WARNING, LOG_FCP | LOG_BG,
				"9069 BLKGRD: LBA %lx grd_tag error %x != %x\n",
				(unsigned long)FUNC7(cmd),
				sum, guard_tag);

	} else if (err_type == BGS_REFTAG_ERR_MASK) {
		FUNC6(1, cmd->sense_buffer, ILLEGAL_REQUEST,
					0x10, 0x3);
		cmd->result = DRIVER_SENSE << 24 | DID_ABORT << 16 |
			      SAM_STAT_CHECK_CONDITION;

		phba->bg_reftag_err_cnt++;
		FUNC5(phba, KERN_WARNING, LOG_FCP | LOG_BG,
				"9066 BLKGRD: LBA %lx ref_tag error %x != %x\n",
				(unsigned long)FUNC7(cmd),
				ref_tag, start_ref_tag);

	} else if (err_type == BGS_APPTAG_ERR_MASK) {
		FUNC6(1, cmd->sense_buffer, ILLEGAL_REQUEST,
					0x10, 0x2);
		cmd->result = DRIVER_SENSE << 24 | DID_ABORT << 16 |
			      SAM_STAT_CHECK_CONDITION;

		phba->bg_apptag_err_cnt++;
		FUNC5(phba, KERN_WARNING, LOG_FCP | LOG_BG,
				"9041 BLKGRD: LBA %lx app_tag error %x != %x\n",
				(unsigned long)FUNC7(cmd),
				app_tag, start_app_tag);
	}
}