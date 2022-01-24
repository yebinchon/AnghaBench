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
struct TYPE_2__ {int /*<<< orphan*/  unit_id; } ;
struct scsi_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  intr_lock; int /*<<< orphan*/  flags; TYPE_1__ dds; } ;

/* Variables and functions */
 long ADAPT_SUCCESS ; 
 long ERROR ; 
#define  H_BUSY 137 
#define  H_HARDWARE 136 
#define  H_LONG_BUSY_ORDER_100_MSEC 135 
#define  H_LONG_BUSY_ORDER_100_SEC 134 
#define  H_LONG_BUSY_ORDER_10_MSEC 133 
#define  H_LONG_BUSY_ORDER_10_SEC 132 
#define  H_LONG_BUSY_ORDER_1_MSEC 131 
#define  H_LONG_BUSY_ORDER_1_SEC 130 
#define  H_PARAMETER 129 
#define  H_SUCCESS 128 
 int /*<<< orphan*/  PREP_FOR_SUSPEND_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,long,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static long FUNC8(struct scsi_info *vscsi)
{
	long qrc;
	long rc = ADAPT_SUCCESS;
	int ticks = 0;

	do {
		qrc = FUNC2(vscsi->dds.unit_id);
		switch (qrc) {
		case H_SUCCESS:
			FUNC4(&vscsi->intr_lock);
			vscsi->flags &= ~PREP_FOR_SUSPEND_FLAGS;
			FUNC5(&vscsi->intr_lock);
			break;

		case H_HARDWARE:
		case H_PARAMETER:
			FUNC1(&vscsi->dev, "unregister_command_q: error from h_free_crq %ld\n",
				qrc);
			rc = ERROR;
			break;

		case H_BUSY:
		case H_LONG_BUSY_ORDER_1_MSEC:
			/* msleep not good for small values */
			FUNC7(1000, 2000);
			ticks += 1;
			break;
		case H_LONG_BUSY_ORDER_10_MSEC:
			FUNC7(10000, 20000);
			ticks += 10;
			break;
		case H_LONG_BUSY_ORDER_100_MSEC:
			FUNC3(100);
			ticks += 100;
			break;
		case H_LONG_BUSY_ORDER_1_SEC:
			FUNC6(1);
			ticks += 1000;
			break;
		case H_LONG_BUSY_ORDER_10_SEC:
			FUNC6(10);
			ticks += 10000;
			break;
		case H_LONG_BUSY_ORDER_100_SEC:
			FUNC6(100);
			ticks += 100000;
			break;
		default:
			FUNC1(&vscsi->dev, "unregister_command_q: unknown error %ld from h_free_crq\n",
				qrc);
			rc = ERROR;
			break;
		}

		/*
		 * dont wait more then 300 seconds
		 * ticks are in milliseconds more or less
		 */
		if (ticks > 300000 && qrc != H_SUCCESS) {
			rc = ERROR;
			FUNC1(&vscsi->dev, "Excessive wait for h_free_crq\n");
		}
	} while (qrc != H_SUCCESS && rc == ADAPT_SUCCESS);

	FUNC0(&vscsi->dev, "Freeing CRQ: phyp rc %ld, rc %ld\n", qrc, rc);

	return rc;
}