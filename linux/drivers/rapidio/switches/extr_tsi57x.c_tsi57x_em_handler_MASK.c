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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct rio_mport {scalar_t__ sys_size; } ;
struct rio_dev {int /*<<< orphan*/  hopcount; int /*<<< orphan*/  destid; TYPE_2__* rswitch; TYPE_1__* net; } ;
struct TYPE_4__ {int /*<<< orphan*/ * route_table; } ;
struct TYPE_3__ {struct rio_mport* hport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rio_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RIO_GLOBAL_TABLE ; 
 int RIO_PORT_N_CTL_LOCKOUT ; 
 int RIO_PORT_N_ERR_STS_INP_ES ; 
 int RIO_PORT_N_ERR_STS_OUT_ES ; 
 int RIO_PORT_N_ERR_STS_PORT_OK ; 
 int RIO_PORT_N_MNT_RSP_RVAL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct rio_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct rio_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct rio_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rio_mport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int
FUNC12(struct rio_dev *rdev, u8 portnum)
{
	struct rio_mport *mport = rdev->net->hport;
	u32 intstat, err_status;
	int sendcount, checkcount;
	u8 route_port;
	u32 regval;

	FUNC8(rdev,
			FUNC1(rdev, portnum),
			&err_status);

	if ((err_status & RIO_PORT_N_ERR_STS_PORT_OK) &&
	    (err_status & (RIO_PORT_N_ERR_STS_OUT_ES |
			  RIO_PORT_N_ERR_STS_INP_ES))) {
		/* Remove any queued packets by locking/unlocking port */
		FUNC8(rdev,
			FUNC0(rdev, portnum),
			&regval);
		if (!(regval & RIO_PORT_N_CTL_LOCKOUT)) {
			FUNC9(rdev,
				FUNC0(rdev, portnum),
				regval | RIO_PORT_N_CTL_LOCKOUT);
			FUNC11(50);
			FUNC9(rdev,
				FUNC0(rdev, portnum),
				regval);
		}

		/* Read from link maintenance response register to clear
		 * valid bit
		 */
		FUNC8(rdev,
			FUNC2(rdev, portnum),
			&regval);

		/* Send a Packet-Not-Accepted/Link-Request-Input-Status control
		 * symbol to recover from IES/OES
		 */
		sendcount = 3;
		while (sendcount) {
			FUNC9(rdev,
					  FUNC3(portnum), 0x40fc8000);
			checkcount = 3;
			while (checkcount--) {
				FUNC11(50);
				FUNC8(rdev,
					FUNC2(rdev,
								   portnum),
					&regval);
				if (regval & RIO_PORT_N_MNT_RSP_RVAL)
					goto exit_es;
			}

			sendcount--;
		}
	}

exit_es:
	/* Clear implementation specific error status bits */
	FUNC8(rdev, FUNC4(portnum), &intstat);
	FUNC6("TSI578[%x:%x] SP%d_INT_STATUS=0x%08x\n",
		 rdev->destid, rdev->hopcount, portnum, intstat);

	if (intstat & 0x10000) {
		FUNC8(rdev,
				FUNC5(portnum), &regval);
		regval = (mport->sys_size) ? (regval >> 16) : (regval >> 24);
		route_port = rdev->rswitch->route_table[regval];
		FUNC6("RIO: TSI578[%s] P%d LUT Parity Error (destID=%d)\n",
			FUNC7(rdev), portnum, regval);
		FUNC10(mport, rdev->destid, rdev->hopcount,
				RIO_GLOBAL_TABLE, regval, route_port);
	}

	FUNC9(rdev, FUNC4(portnum),
			    intstat & 0x000700bd);

	return 0;
}