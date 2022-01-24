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
typedef  int u32 ;
struct rio_dev {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct rio_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rio_dev*,int) ; 
 int /*<<< orphan*/  RIO_MNT_REQ_CMD_IS ; 
 int RIO_PORT_N_MNT_RSP_RVAL ; 
 int /*<<< orphan*/  FUNC2 (struct rio_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct rio_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct rio_dev *rdev, int pnum, u32 *lnkresp)
{
	u32 regval;
	int checkcount;

	if (lnkresp) {
		/* Read from link maintenance response register
		 * to clear valid bit */
		FUNC2(rdev,
			FUNC1(rdev, pnum),
			&regval);
		FUNC4(50);
	}

	/* Issue Input-status command */
	FUNC3(rdev,
		FUNC0(rdev, pnum),
		RIO_MNT_REQ_CMD_IS);

	/* Exit if the response is not expected */
	if (!lnkresp)
		return 0;

	checkcount = 3;
	while (checkcount--) {
		FUNC4(50);
		FUNC2(rdev,
			FUNC1(rdev, pnum),
			&regval);
		if (regval & RIO_PORT_N_MNT_RSP_RVAL) {
			*lnkresp = regval;
			return 0;
		}
	}

	return -EIO;
}