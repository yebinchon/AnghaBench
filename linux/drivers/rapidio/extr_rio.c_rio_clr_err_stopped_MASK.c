#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct rio_dev {int /*<<< orphan*/  swpinfo; TYPE_1__* rswitch; } ;
struct TYPE_2__ {struct rio_dev** nextdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rio_dev*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct rio_dev*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 size_t RIO_PORT_N_ACK_INBOUND ; 
 size_t RIO_PORT_N_ACK_OUTBOUND ; 
 size_t RIO_PORT_N_ACK_OUTSTAND ; 
 size_t RIO_PORT_N_ERR_STS_INP_ES ; 
 size_t RIO_PORT_N_ERR_STS_OUT_ES ; 
 size_t RIO_PORT_N_MNT_RSP_ASTAT ; 
 size_t RIO_PORT_N_MNT_RSP_LSTAT ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (struct rio_dev*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (struct rio_dev*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct rio_dev*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct rio_dev *rdev, u32 pnum, u32 err_status)
{
	struct rio_dev *nextdev = rdev->rswitch->nextdev[pnum];
	u32 regval;
	u32 far_ackid, far_linkstat, near_ackid;

	if (err_status == 0)
		FUNC5(rdev,
			FUNC1(rdev, pnum),
			&err_status);

	if (err_status & RIO_PORT_N_ERR_STS_OUT_ES) {
		FUNC3("RIO_EM: servicing Output Error-Stopped state\n");
		/*
		 * Send a Link-Request/Input-Status control symbol
		 */
		if (FUNC4(rdev, pnum, &regval)) {
			FUNC3("RIO_EM: Input-status response timeout\n");
			goto rd_err;
		}

		FUNC3("RIO_EM: SP%d Input-status response=0x%08x\n",
			 pnum, regval);
		far_ackid = (regval & RIO_PORT_N_MNT_RSP_ASTAT) >> 5;
		far_linkstat = regval & RIO_PORT_N_MNT_RSP_LSTAT;
		FUNC5(rdev,
			FUNC0(rdev, pnum),
			&regval);
		FUNC3("RIO_EM: SP%d_ACK_STS_CSR=0x%08x\n", pnum, regval);
		near_ackid = (regval & RIO_PORT_N_ACK_INBOUND) >> 24;
		FUNC3("RIO_EM: SP%d far_ackID=0x%02x far_linkstat=0x%02x" \
			 " near_ackID=0x%02x\n",
			pnum, far_ackid, far_linkstat, near_ackid);

		/*
		 * If required, synchronize ackIDs of near and
		 * far sides.
		 */
		if ((far_ackid != ((regval & RIO_PORT_N_ACK_OUTSTAND) >> 8)) ||
		    (far_ackid != (regval & RIO_PORT_N_ACK_OUTBOUND))) {
			/* Align near outstanding/outbound ackIDs with
			 * far inbound.
			 */
			FUNC6(rdev,
				FUNC0(rdev, pnum),
				(near_ackid << 24) |
					(far_ackid << 8) | far_ackid);
			/* Align far outstanding/outbound ackIDs with
			 * near inbound.
			 */
			far_ackid++;
			if (!nextdev) {
				FUNC3("RIO_EM: nextdev pointer == NULL\n");
				goto rd_err;
			}

			FUNC6(nextdev,
				FUNC0(nextdev,
					FUNC2(nextdev->swpinfo)),
				(far_ackid << 24) |
				(near_ackid << 8) | near_ackid);
		}
rd_err:
		FUNC5(rdev, FUNC1(rdev, pnum),
				   &err_status);
		FUNC3("RIO_EM: SP%d_ERR_STS_CSR=0x%08x\n", pnum, err_status);
	}

	if ((err_status & RIO_PORT_N_ERR_STS_INP_ES) && nextdev) {
		FUNC3("RIO_EM: servicing Input Error-Stopped state\n");
		FUNC4(nextdev,
				     FUNC2(nextdev->swpinfo), NULL);
		FUNC7(50);

		FUNC5(rdev, FUNC1(rdev, pnum),
				   &err_status);
		FUNC3("RIO_EM: SP%d_ERR_STS_CSR=0x%08x\n", pnum, err_status);
	}

	return (err_status & (RIO_PORT_N_ERR_STS_OUT_ES |
			      RIO_PORT_N_ERR_STS_INP_ES)) ? 1 : 0;
}