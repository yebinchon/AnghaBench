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
struct unmap_block_desc {int /*<<< orphan*/  blocks; int /*<<< orphan*/  lba; } ;
struct sdebug_dev_info {int dummy; } ;
struct scsi_cmnd {unsigned char* cmnd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  ILLEGAL_REQUEST ; 
 int /*<<< orphan*/  INSUFF_RES_ASC ; 
 int /*<<< orphan*/  INSUFF_RES_ASCQ ; 
 int /*<<< orphan*/  SDEB_IN_CDB ; 
 int /*<<< orphan*/  atomic_rw ; 
 int check_condition_result ; 
 int FUNC1 (struct scsi_cmnd*,unsigned long long,unsigned int,int) ; 
 unsigned int FUNC2 (unsigned char*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long long FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 unsigned char* FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cmnd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*,int /*<<< orphan*/ ,int,int) ; 
 unsigned int FUNC9 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct scsi_cmnd*,unsigned char*,unsigned int) ; 
 unsigned int sdebug_unmap_max_desc ; 
 int /*<<< orphan*/  FUNC12 (unsigned long long,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC15(struct scsi_cmnd *scp, struct sdebug_dev_info *devip)
{
	unsigned char *buf;
	struct unmap_block_desc *desc;
	unsigned int i, payload_len, descriptors;
	int ret;
	unsigned long iflags;


	if (!FUNC10())
		return 0;	/* fib and say its done */
	payload_len = FUNC2(scp->cmnd + 7);
	FUNC0(FUNC9(scp) != payload_len);

	descriptors = (payload_len - 8) / 16;
	if (descriptors > sdebug_unmap_max_desc) {
		FUNC8(scp, SDEB_IN_CDB, 7, -1);
		return check_condition_result;
	}

	buf = FUNC6(FUNC9(scp), GFP_ATOMIC);
	if (!buf) {
		FUNC7(scp, ILLEGAL_REQUEST, INSUFF_RES_ASC,
				INSUFF_RES_ASCQ);
		return check_condition_result;
	}

	FUNC11(scp, buf, FUNC9(scp));

	FUNC0(FUNC2(&buf[0]) != payload_len - 2);
	FUNC0(FUNC2(&buf[2]) != descriptors * 16);

	desc = (void *)&buf[8];

	FUNC13(&atomic_rw, iflags);

	for (i = 0 ; i < descriptors ; i++) {
		unsigned long long lba = FUNC4(&desc[i].lba);
		unsigned int num = FUNC3(&desc[i].blocks);

		ret = FUNC1(scp, lba, num, true);
		if (ret)
			goto out;

		FUNC12(lba, num);
	}

	ret = 0;

out:
	FUNC14(&atomic_rw, iflags);
	FUNC5(buf);

	return ret;
}