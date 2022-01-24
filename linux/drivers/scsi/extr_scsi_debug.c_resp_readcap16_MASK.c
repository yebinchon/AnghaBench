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
struct sdebug_dev_info {int dummy; } ;
struct scsi_cmnd {unsigned char* cmnd; } ;

/* Variables and functions */
 int SDEBUG_READCAP16_ARR_SZ ; 
 int FUNC0 (struct scsi_cmnd*,unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int FUNC2 (unsigned char*) ; 
 scalar_t__ have_dif_prot ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char*) ; 
 scalar_t__ FUNC7 () ; 
 int sdebug_capacity ; 
 int sdebug_dif ; 
 int sdebug_lbprz ; 
 int sdebug_lowest_aligned ; 
 int sdebug_physblk_exp ; 
 int /*<<< orphan*/  sdebug_sector_size ; 

__attribute__((used)) static int FUNC8(struct scsi_cmnd *scp,
			  struct sdebug_dev_info *devip)
{
	unsigned char *cmd = scp->cmnd;
	unsigned char arr[SDEBUG_READCAP16_ARR_SZ];
	int alloc_len;

	alloc_len = FUNC2(cmd + 10);
	/* following just in case virtual_gb changed */
	sdebug_capacity = FUNC1();
	FUNC3(arr, 0, SDEBUG_READCAP16_ARR_SZ);
	FUNC6((u64)(sdebug_capacity - 1), arr + 0);
	FUNC5(sdebug_sector_size, arr + 8);
	arr[13] = sdebug_physblk_exp & 0xf;
	arr[14] = (sdebug_lowest_aligned >> 8) & 0x3f;

	if (FUNC7()) {
		arr[14] |= 0x80; /* LBPME */
		/* from sbc4r07, this LBPRZ field is 1 bit, but the LBPRZ in
		 * the LB Provisioning VPD page is 3 bits. Note that lbprz=2
		 * in the wider field maps to 0 in this field.
		 */
		if (sdebug_lbprz & 1)	/* precisely what the draft requires */
			arr[14] |= 0x40;
	}

	arr[15] = sdebug_lowest_aligned & 0xff;

	if (have_dif_prot) {
		arr[12] = (sdebug_dif - 1) << 1; /* P_TYPE */
		arr[12] |= 1; /* PROT_EN */
	}

	return FUNC0(scp, arr,
				    FUNC4(alloc_len, SDEBUG_READCAP16_ARR_SZ));
}