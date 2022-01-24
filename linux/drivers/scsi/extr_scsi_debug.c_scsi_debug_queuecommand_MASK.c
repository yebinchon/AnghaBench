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
typedef  size_t u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct sdebug_dev_info {int /*<<< orphan*/  stopped; int /*<<< orphan*/  uas_bm; } ;
struct scsi_device {scalar_t__ lun; scalar_t__ hostdata; } ;
struct scsi_cmnd {size_t* cmnd; int cmd_len; int /*<<< orphan*/  request; struct scsi_device* device; } ;
struct opcode_info_t {int num_attached; int (* pfp ) (struct scsi_cmnd*,struct sdebug_dev_info*) ;int flags; size_t opcode; int sa; int* len_mask; struct opcode_info_t* arrp; } ;
struct Scsi_Host {int dummy; } ;
typedef  int /*<<< orphan*/  b ;

/* Variables and functions */
 int DID_NO_CONNECT ; 
 int FF_SA ; 
 int F_DELAY_OVERR ; 
 int F_FAKE_RW ; 
 int F_INV_OP ; 
 int F_LONG_DELAY ; 
 int F_M_ACCESS ; 
 int F_RL_WLUN_OK ; 
 int F_SA_HIGH ; 
 int F_SA_LOW ; 
 int F_SKIP_UA ; 
 int F_SYNC_DELAY ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOGICAL_UNIT_NOT_READY ; 
 int /*<<< orphan*/  NOT_READY ; 
 int SCSI_MLQUEUE_HOST_BUSY ; 
 scalar_t__ SCSI_W_LUN_REPORT_LUNS ; 
 scalar_t__ SDEBUG_NUM_UAS ; 
 int SDEBUG_OPT_NO_CDB_NOISE ; 
 int /*<<< orphan*/  SDEB_IN_CDB ; 
 int USER_HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int check_condition_result ; 
 scalar_t__ FUNC3 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC4 (struct scsi_cmnd*) ; 
 struct sdebug_dev_info* FUNC5 (struct scsi_device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (size_t*) ; 
 scalar_t__ FUNC8 (int (*) (struct scsi_cmnd*,struct sdebug_dev_info*)) ; 
 int FUNC9 (struct scsi_cmnd*,struct sdebug_dev_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_cmnd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct scsi_cmnd*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_cmnd*) ; 
 int FUNC13 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  my_name ; 
 size_t* opcode_ind_arr ; 
 struct opcode_info_t* opcode_info_arr ; 
 int FUNC14 (struct scsi_cmnd*,struct sdebug_dev_info*,int,int (*) (struct scsi_cmnd*,struct sdebug_dev_info*),int,int) ; 
 scalar_t__ FUNC15 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sdebug_cmnd_count ; 
 int sdebug_every_nth ; 
 scalar_t__ sdebug_fake_rw ; 
 int sdebug_jdelay ; 
 scalar_t__ sdebug_max_luns ; 
 int sdebug_ndelay ; 
 int sdebug_opts ; 
 scalar_t__ sdebug_statistics ; 
 int sdebug_strict ; 
 scalar_t__ sdebug_verbose ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,struct scsi_device*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static int FUNC20(struct Scsi_Host *shost,
				   struct scsi_cmnd *scp)
{
	u8 sdeb_i;
	struct scsi_device *sdp = scp->device;
	const struct opcode_info_t *oip;
	const struct opcode_info_t *r_oip;
	struct sdebug_dev_info *devip;
	u8 *cmd = scp->cmnd;
	int (*r_pfp)(struct scsi_cmnd *, struct sdebug_dev_info *);
	int (*pfp)(struct scsi_cmnd *, struct sdebug_dev_info *) = NULL;
	int k, na;
	int errsts = 0;
	u32 flags;
	u16 sa;
	u8 opcode = cmd[0];
	bool has_wlun_rl;

	FUNC16(scp, 0);
	if (sdebug_statistics)
		FUNC0(&sdebug_cmnd_count);
	if (FUNC19(sdebug_verbose &&
		     !(SDEBUG_OPT_NO_CDB_NOISE & sdebug_opts))) {
		char b[120];
		int n, len, sb;

		len = scp->cmd_len;
		sb = (int)sizeof(b);
		if (len > 32)
			FUNC18(b, "too long, over 32 bytes");
		else {
			for (k = 0, n = 0; k < len && n < sb; ++k)
				n += FUNC15(b + n, sb - n, "%02x ",
					       (u32)cmd[k]);
		}
		FUNC17(KERN_INFO, sdp, "%s: tag=%#x, cmd %s\n", my_name,
			    FUNC2(scp->request), b);
	}
	if (FUNC3(scp))
		return SCSI_MLQUEUE_HOST_BUSY;
	has_wlun_rl = (sdp->lun == SCSI_W_LUN_REPORT_LUNS);
	if (FUNC19((sdp->lun >= sdebug_max_luns) && !has_wlun_rl))
		goto err_out;

	sdeb_i = opcode_ind_arr[opcode];	/* fully mapped */
	oip = &opcode_info_arr[sdeb_i];		/* safe if table consistent */
	devip = (struct sdebug_dev_info *)sdp->hostdata;
	if (FUNC19(!devip)) {
		devip = FUNC5(sdp);
		if (NULL == devip)
			goto err_out;
	}
	na = oip->num_attached;
	r_pfp = oip->pfp;
	if (na) {	/* multiple commands with this opcode */
		r_oip = oip;
		if (FF_SA & r_oip->flags) {
			if (F_SA_LOW & oip->flags)
				sa = 0x1f & cmd[1];
			else
				sa = FUNC7(cmd + 8);
			for (k = 0; k <= na; oip = r_oip->arrp + k++) {
				if (opcode == oip->opcode && sa == oip->sa)
					break;
			}
		} else {   /* since no service action only check opcode */
			for (k = 0; k <= na; oip = r_oip->arrp + k++) {
				if (opcode == oip->opcode)
					break;
			}
		}
		if (k > na) {
			if (F_SA_LOW & r_oip->flags)
				FUNC11(scp, SDEB_IN_CDB, 1, 4);
			else if (F_SA_HIGH & r_oip->flags)
				FUNC11(scp, SDEB_IN_CDB, 8, 7);
			else
				FUNC12(scp);
			goto check_cond;
		}
	}	/* else (when na==0) we assume the oip is a match */
	flags = oip->flags;
	if (FUNC19(F_INV_OP & flags)) {
		FUNC12(scp);
		goto check_cond;
	}
	if (FUNC19(has_wlun_rl && !(F_RL_WLUN_OK & flags))) {
		if (sdebug_verbose)
			FUNC17(KERN_INFO, sdp, "%s: Opcode 0x%x not%s\n",
				    my_name, opcode, " supported for wlun");
		FUNC12(scp);
		goto check_cond;
	}
	if (FUNC19(sdebug_strict)) {	/* check cdb against mask */
		u8 rem;
		int j;

		for (k = 1; k < oip->len_mask[0] && k < 16; ++k) {
			rem = ~oip->len_mask[k] & cmd[k];
			if (rem) {
				for (j = 7; j >= 0; --j, rem <<= 1) {
					if (0x80 & rem)
						break;
				}
				FUNC11(scp, SDEB_IN_CDB, k, j);
				goto check_cond;
			}
		}
	}
	if (FUNC19(!(F_SKIP_UA & flags) &&
		     FUNC6(devip->uas_bm,
				    SDEBUG_NUM_UAS) != SDEBUG_NUM_UAS)) {
		errsts = FUNC9(scp, devip);
		if (errsts)
			goto check_cond;
	}
	if (FUNC19((F_M_ACCESS & flags) && FUNC1(&devip->stopped))) {
		FUNC10(scp, NOT_READY, LOGICAL_UNIT_NOT_READY, 0x2);
		if (sdebug_verbose)
			FUNC17(KERN_INFO, sdp, "%s reports: Not ready: "
				    "%s\n", my_name, "initializing command "
				    "required");
		errsts = check_condition_result;
		goto fini;
	}
	if (sdebug_fake_rw && (F_FAKE_RW & flags))
		goto fini;
	if (FUNC19(sdebug_every_nth)) {
		if (FUNC4(scp))
			return 0;	/* ignore command: make trouble */
	}
	if (FUNC8(oip->pfp))
		pfp = oip->pfp;	/* calls a resp_* function */
	else
		pfp = r_pfp;    /* if leaf function ptr NULL, try the root's */

fini:
	if (F_DELAY_OVERR & flags)
		return FUNC14(scp, devip, errsts, pfp, 0, 0);
	else if ((flags & F_LONG_DELAY) && (sdebug_jdelay > 0 ||
					    sdebug_ndelay > 10000)) {
		/*
		 * Skip long delays if ndelay <= 10 microseconds. Otherwise
		 * for Start Stop Unit (SSU) want at least 1 second delay and
		 * if sdebug_jdelay>1 want a long delay of that many seconds.
		 * For Synchronize Cache want 1/20 of SSU's delay.
		 */
		int jdelay = (sdebug_jdelay < 2) ? 1 : sdebug_jdelay;
		int denom = (flags & F_SYNC_DELAY) ? 20 : 1;

		jdelay = FUNC13(USER_HZ * jdelay, HZ, denom * USER_HZ);
		return FUNC14(scp, devip, errsts, pfp, jdelay, 0);
	} else
		return FUNC14(scp, devip, errsts, pfp, sdebug_jdelay,
				     sdebug_ndelay);
check_cond:
	return FUNC14(scp, devip, check_condition_result, NULL, 0, 0);
err_out:
	return FUNC14(scp, NULL, DID_NO_CONNECT << 16, NULL, 0, 0);
}