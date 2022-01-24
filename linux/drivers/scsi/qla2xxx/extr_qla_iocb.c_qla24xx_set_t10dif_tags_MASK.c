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
typedef  int /*<<< orphan*/  uint32_t ;
struct scsi_cmnd {int dummy; } ;
struct fw_dif_context {int* ref_tag_mask; int* app_tag_mask; void* app_tag; void* ref_tag; } ;
typedef  int /*<<< orphan*/  srb_t ;

/* Variables and functions */
 struct scsi_cmnd* FUNC0 (int /*<<< orphan*/ *) ; 
#define  SCSI_PROT_DIF_TYPE0 131 
#define  SCSI_PROT_DIF_TYPE1 130 
#define  SCSI_PROT_DIF_TYPE2 129 
#define  SCSI_PROT_DIF_TYPE3 128 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct scsi_cmnd*) ; 
 int FUNC5 (struct scsi_cmnd*) ; 

__attribute__((used)) static inline void
FUNC6(srb_t *sp, struct fw_dif_context *pkt,
    unsigned int protcnt)
{
	struct scsi_cmnd *cmd = FUNC0(sp);

	switch (FUNC5(cmd)) {
	case SCSI_PROT_DIF_TYPE0:
		/*
		 * No check for ql2xenablehba_err_chk, as it would be an
		 * I/O error if hba tag generation is not done.
		 */
		pkt->ref_tag = FUNC2((uint32_t)
		    (0xffffffff & FUNC4(cmd)));

		if (!FUNC3(sp))
			break;

		pkt->ref_tag_mask[0] = 0xff;
		pkt->ref_tag_mask[1] = 0xff;
		pkt->ref_tag_mask[2] = 0xff;
		pkt->ref_tag_mask[3] = 0xff;
		break;

	/*
	 * For TYPE 2 protection: 16 bit GUARD + 32 bit REF tag has to
	 * match LBA in CDB + N
	 */
	case SCSI_PROT_DIF_TYPE2:
		pkt->app_tag = FUNC1(0);
		pkt->app_tag_mask[0] = 0x0;
		pkt->app_tag_mask[1] = 0x0;

		pkt->ref_tag = FUNC2((uint32_t)
		    (0xffffffff & FUNC4(cmd)));

		if (!FUNC3(sp))
			break;

		/* enable ALL bytes of the ref tag */
		pkt->ref_tag_mask[0] = 0xff;
		pkt->ref_tag_mask[1] = 0xff;
		pkt->ref_tag_mask[2] = 0xff;
		pkt->ref_tag_mask[3] = 0xff;
		break;

	/* For Type 3 protection: 16 bit GUARD only */
	case SCSI_PROT_DIF_TYPE3:
		pkt->ref_tag_mask[0] = pkt->ref_tag_mask[1] =
			pkt->ref_tag_mask[2] = pkt->ref_tag_mask[3] =
								0x00;
		break;

	/*
	 * For TYpe 1 protection: 16 bit GUARD tag, 32 bit REF tag, and
	 * 16 bit app tag.
	 */
	case SCSI_PROT_DIF_TYPE1:
		pkt->ref_tag = FUNC2((uint32_t)
		    (0xffffffff & FUNC4(cmd)));
		pkt->app_tag = FUNC1(0);
		pkt->app_tag_mask[0] = 0x0;
		pkt->app_tag_mask[1] = 0x0;

		if (!FUNC3(sp))
			break;

		/* enable ALL bytes of the ref tag */
		pkt->ref_tag_mask[0] = 0xff;
		pkt->ref_tag_mask[1] = 0xff;
		pkt->ref_tag_mask[2] = 0xff;
		pkt->ref_tag_mask[3] = 0xff;
		break;
	}
}