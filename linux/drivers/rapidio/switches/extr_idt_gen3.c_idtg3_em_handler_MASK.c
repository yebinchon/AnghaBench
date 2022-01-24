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
typedef  int u32 ;
struct rio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int RIO_PLM_SPx_IMP_SPEC_CTL_SOFT_RST ; 
 int RIO_PORT_N_ERR_STS_INP_ES ; 
 int RIO_PORT_N_ERR_STS_OUT_ES ; 
 int RIO_PORT_N_ERR_STS_PORT_UNINIT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct rio_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct rio_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct rio_dev *rdev, u8 pnum)
{
	u32 err_status;
	u32 rval;

	FUNC3(rdev,
			FUNC0(rdev, pnum),
			&err_status);

	/* Do nothing for device/link removal */
	if (err_status & RIO_PORT_N_ERR_STS_PORT_UNINIT)
		return 0;

	/* When link is OK we have a device insertion.
	 * Request port soft reset to clear errors if they present.
	 * Inbound and outbound ackIDs will be 0 after reset.
	 */
	if (err_status & (RIO_PORT_N_ERR_STS_OUT_ES |
				RIO_PORT_N_ERR_STS_INP_ES)) {
		FUNC3(rdev, FUNC1(pnum), &rval);
		FUNC4(rdev, FUNC1(pnum),
				    rval | RIO_PLM_SPx_IMP_SPEC_CTL_SOFT_RST);
		FUNC5(10);
		FUNC4(rdev, FUNC1(pnum), rval);
		FUNC2(500);
	}

	return 0;
}