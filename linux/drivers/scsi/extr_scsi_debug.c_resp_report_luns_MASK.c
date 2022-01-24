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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
struct sdebug_dev_info {int dummy; } ;
struct scsi_lun {int dummy; } ;
struct scsi_cmnd {unsigned char* cmnd; } ;
typedef  int /*<<< orphan*/  arr ;

/* Variables and functions */
 int RL_BUCKET_ELEMS ; 
 int /*<<< orphan*/  SCSI_W_LUN_REPORT_LUNS ; 
 int /*<<< orphan*/  SDEB_IN_CDB ; 
 int check_condition_result ; 
 int /*<<< orphan*/  FUNC0 (struct sdebug_dev_info*) ; 
 unsigned int FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_lun*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (struct scsi_cmnd*,int /*<<< orphan*/ *,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned char,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC10 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 unsigned int sdebug_max_luns ; 
 scalar_t__ sdebug_no_lun_0 ; 

__attribute__((used)) static int FUNC11(struct scsi_cmnd *scp,
			    struct sdebug_dev_info *devip)
{
	unsigned char *cmd = scp->cmnd;
	unsigned int alloc_len;
	unsigned char select_report;
	u64 lun;
	struct scsi_lun *lun_p;
	u8 arr[RL_BUCKET_ELEMS * sizeof(struct scsi_lun)];
	unsigned int lun_cnt;	/* normal LUN count (max: 256) */
	unsigned int wlun_cnt;	/* report luns W-LUN count */
	unsigned int tlun_cnt;	/* total LUN count */
	unsigned int rlen;	/* response length (in bytes) */
	int k, j, n, res;
	unsigned int off_rsp = 0;
	const int sz_lun = sizeof(struct scsi_lun);

	FUNC0(devip);

	select_report = cmd[2];
	alloc_len = FUNC1(cmd + 6);

	if (alloc_len < 4) {
		FUNC7("alloc len too small %d\n", alloc_len);
		FUNC4(scp, SDEB_IN_CDB, 6, -1);
		return check_condition_result;
	}

	switch (select_report) {
	case 0:		/* all LUNs apart from W-LUNs */
		lun_cnt = sdebug_max_luns;
		wlun_cnt = 0;
		break;
	case 1:		/* only W-LUNs */
		lun_cnt = 0;
		wlun_cnt = 1;
		break;
	case 2:		/* all LUNs */
		lun_cnt = sdebug_max_luns;
		wlun_cnt = 1;
		break;
	case 0x10:	/* only administrative LUs */
	case 0x11:	/* see SPC-5 */
	case 0x12:	/* only subsiduary LUs owned by referenced LU */
	default:
		FUNC6("select report invalid %d\n", select_report);
		FUNC4(scp, SDEB_IN_CDB, 2, -1);
		return check_condition_result;
	}

	if (sdebug_no_lun_0 && (lun_cnt > 0))
		--lun_cnt;

	tlun_cnt = lun_cnt + wlun_cnt;
	rlen = tlun_cnt * sz_lun;	/* excluding 8 byte header */
	FUNC10(scp, FUNC9(scp));
	FUNC6("select_report %d luns = %d wluns = %d no_lun0 %d\n",
		 select_report, lun_cnt, wlun_cnt, sdebug_no_lun_0);

	/* loops rely on sizeof response header same as sizeof lun (both 8) */
	lun = sdebug_no_lun_0 ? 1 : 0;
	for (k = 0, j = 0, res = 0; true; ++k, j = 0) {
		FUNC3(arr, 0, sizeof(arr));
		lun_p = (struct scsi_lun *)&arr[0];
		if (k == 0) {
			FUNC8(rlen, &arr[0]);
			++lun_p;
			j = 1;
		}
		for ( ; j < RL_BUCKET_ELEMS; ++j, ++lun_p) {
			if ((k * RL_BUCKET_ELEMS) + j > lun_cnt)
				break;
			FUNC2(lun++, lun_p);
		}
		if (j < RL_BUCKET_ELEMS)
			break;
		n = j * sz_lun;
		res = FUNC5(scp, arr, n, off_rsp);
		if (res)
			return res;
		off_rsp += n;
	}
	if (wlun_cnt) {
		FUNC2(SCSI_W_LUN_REPORT_LUNS, lun_p);
		++j;
	}
	if (j > 0)
		res = FUNC5(scp, arr, j * sz_lun, off_rsp);
	return res;
}