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
typedef  int /*<<< orphan*/  u32 ;
struct sym_hcb {int dummy; } ;
struct TYPE_3__ {void* savep; void* lastp; } ;
struct TYPE_4__ {TYPE_1__ head; } ;
struct sym_ccb {scalar_t__ segments; int* cdb_buf; void* goalp; TYPE_2__ phys; void* startp; int /*<<< orphan*/  host_flags; scalar_t__ data_len; } ;
struct scsi_cmnd {int sc_data_direction; } ;

/* Variables and functions */
 int /*<<< orphan*/  DID_ERROR ; 
#define  DMA_BIDIRECTIONAL 131 
#define  DMA_FROM_DEVICE 130 
#define  DMA_NONE 129 
#define  DMA_TO_DEVICE 128 
 int /*<<< orphan*/  HF_DATA_IN ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  data_in2 ; 
 int /*<<< orphan*/  data_out2 ; 
 int /*<<< orphan*/  no_data ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_cmnd*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sym_hcb*,struct sym_ccb*) ; 
 int /*<<< orphan*/  FUNC6 (struct sym_hcb*,struct sym_ccb*) ; 
 scalar_t__ FUNC7 (struct sym_hcb*,struct sym_ccb*,struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sym_hcb*,struct scsi_cmnd*,struct sym_ccb*) ; 
 int /*<<< orphan*/  FUNC10 (struct sym_hcb*,struct scsi_cmnd*) ; 

int FUNC11(struct sym_hcb *np, struct scsi_cmnd *cmd, struct sym_ccb *cp)
{
	u32 lastp, goalp;
	int dir;

	/*
	 *  Build the CDB.
	 */
	if (FUNC9(np, cmd, cp))
		goto out_abort;

	/*
	 *  No direction means no data.
	 */
	dir = cmd->sc_data_direction;
	if (dir != DMA_NONE) {
		cp->segments = FUNC7(np, cp, cmd);
		if (cp->segments < 0) {
			FUNC8(cmd, DID_ERROR);
			goto out_abort;
		}

		/*
		 *  No segments means no data.
		 */
		if (!cp->segments)
			dir = DMA_NONE;
	} else {
		cp->data_len = 0;
		cp->segments = 0;
	}

	/*
	 *  Set the data pointer.
	 */
	switch (dir) {
	case DMA_BIDIRECTIONAL:
		FUNC4(KERN_INFO, cmd, "got DMA_BIDIRECTIONAL command");
		FUNC8(cmd, DID_ERROR);
		goto out_abort;
	case DMA_TO_DEVICE:
		goalp = FUNC0(np, data_out2) + 8;
		lastp = goalp - 8 - (cp->segments * (2*4));
		break;
	case DMA_FROM_DEVICE:
		cp->host_flags |= HF_DATA_IN;
		goalp = FUNC0(np, data_in2) + 8;
		lastp = goalp - 8 - (cp->segments * (2*4));
		break;
	case DMA_NONE:
	default:
		lastp = goalp = FUNC1(np, no_data);
		break;
	}

	/*
	 *  Set all pointers values needed by SCRIPTS.
	 */
	cp->phys.head.lastp = FUNC2(lastp);
	cp->phys.head.savep = FUNC2(lastp);
	cp->startp	    = cp->phys.head.savep;
	cp->goalp	    = FUNC2(goalp);

	/*
	 *  When `#ifed 1', the code below makes the driver 
	 *  panic on the first attempt to write to a SCSI device.
	 *  It is the first test we want to do after a driver 
	 *  change that does not seem obviously safe. :)
	 */
#if 0
	switch (cp->cdb_buf[0]) {
	case 0x0A: case 0x2A: case 0xAA:
		panic("XXXXXXXXXXXXX WRITE NOT YET ALLOWED XXXXXXXXXXXXXX\n");
		break;
	default:
		break;
	}
#endif

	/*
	 *	activate this job.
	 */
	FUNC6(np, cp);
	return 0;

out_abort:
	FUNC5(np, cp);
	FUNC10(np, cmd);
	return 0;
}