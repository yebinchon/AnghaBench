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
typedef  scalar_t__ u_int ;
struct ahd_softc {int msgout_len; scalar_t__ msgout_index; scalar_t__ msgout_buf; } ;
struct ahd_devinfo {int /*<<< orphan*/  lun; int /*<<< orphan*/  target; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 scalar_t__ AHD_ASYNC_XFER_PERIOD ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct ahd_softc *ahd, struct ahd_devinfo *devinfo,
		   u_int period, u_int offset)
{
	if (offset == 0)
		period = AHD_ASYNC_XFER_PERIOD;
	ahd->msgout_index += FUNC2(
			ahd->msgout_buf + ahd->msgout_index, period, offset);
	ahd->msgout_len += 5;
	if (bootverbose) {
		FUNC1("(%s:%c:%d:%d): Sending SDTR period %x, offset %x\n",
		       FUNC0(ahd), devinfo->channel, devinfo->target,
		       devinfo->lun, period, offset);
	}
}