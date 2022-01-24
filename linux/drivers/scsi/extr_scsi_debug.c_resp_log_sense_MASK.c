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
struct sdebug_dev_info {int dummy; } ;
struct scsi_cmnd {unsigned char* cmnd; } ;
typedef  int /*<<< orphan*/  arr ;

/* Variables and functions */
 int SDEBUG_MAX_INQ_ARR_SZ ; 
 int SDEBUG_MAX_LSENSE_SZ ; 
 int /*<<< orphan*/  SDEB_IN_CDB ; 
 int check_condition_result ; 
 int FUNC0 (struct scsi_cmnd*,unsigned char*,int) ; 
 int FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmnd*,int /*<<< orphan*/ ,int,int) ; 
 unsigned char FUNC5 (unsigned char*) ; 
 unsigned char FUNC6 (unsigned char*) ; 

__attribute__((used)) static int FUNC7(struct scsi_cmnd *scp,
			  struct sdebug_dev_info *devip)
{
	int ppc, sp, pcode, subpcode, alloc_len, len, n;
	unsigned char arr[SDEBUG_MAX_LSENSE_SZ];
	unsigned char *cmd = scp->cmnd;

	FUNC2(arr, 0, sizeof(arr));
	ppc = cmd[1] & 0x2;
	sp = cmd[1] & 0x1;
	if (ppc || sp) {
		FUNC4(scp, SDEB_IN_CDB, 1, ppc ? 1 : 0);
		return check_condition_result;
	}
	pcode = cmd[2] & 0x3f;
	subpcode = cmd[3] & 0xff;
	alloc_len = FUNC1(cmd + 7);
	arr[0] = pcode;
	if (0 == subpcode) {
		switch (pcode) {
		case 0x0:	/* Supported log pages log page */
			n = 4;
			arr[n++] = 0x0;		/* this page */
			arr[n++] = 0xd;		/* Temperature */
			arr[n++] = 0x2f;	/* Informational exceptions */
			arr[3] = n - 4;
			break;
		case 0xd:	/* Temperature log page */
			arr[3] = FUNC6(arr + 4);
			break;
		case 0x2f:	/* Informational exceptions log page */
			arr[3] = FUNC5(arr + 4);
			break;
		default:
			FUNC4(scp, SDEB_IN_CDB, 2, 5);
			return check_condition_result;
		}
	} else if (0xff == subpcode) {
		arr[0] |= 0x40;
		arr[1] = subpcode;
		switch (pcode) {
		case 0x0:	/* Supported log pages and subpages log page */
			n = 4;
			arr[n++] = 0x0;
			arr[n++] = 0x0;		/* 0,0 page */
			arr[n++] = 0x0;
			arr[n++] = 0xff;	/* this page */
			arr[n++] = 0xd;
			arr[n++] = 0x0;		/* Temperature */
			arr[n++] = 0x2f;
			arr[n++] = 0x0;	/* Informational exceptions */
			arr[3] = n - 4;
			break;
		case 0xd:	/* Temperature subpages */
			n = 4;
			arr[n++] = 0xd;
			arr[n++] = 0x0;		/* Temperature */
			arr[3] = n - 4;
			break;
		case 0x2f:	/* Informational exceptions subpages */
			n = 4;
			arr[n++] = 0x2f;
			arr[n++] = 0x0;		/* Informational exceptions */
			arr[3] = n - 4;
			break;
		default:
			FUNC4(scp, SDEB_IN_CDB, 2, 5);
			return check_condition_result;
		}
	} else {
		FUNC4(scp, SDEB_IN_CDB, 3, -1);
		return check_condition_result;
	}
	len = FUNC3(FUNC1(arr + 2) + 4, alloc_len);
	return FUNC0(scp, arr,
		    FUNC3(len, SDEBUG_MAX_INQ_ARR_SZ));
}