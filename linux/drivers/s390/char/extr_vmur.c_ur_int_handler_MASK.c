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
struct urdev {int /*<<< orphan*/  io_done; int /*<<< orphan*/  io_request_rc; } ;
struct TYPE_3__ {int dstat; int /*<<< orphan*/  count; int /*<<< orphan*/  cstat; } ;
struct TYPE_4__ {TYPE_1__ cmd; } ;
struct irb {TYPE_2__ scsw; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DEV_STAT_CHN_END ; 
 int DEV_STAT_DEV_END ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ FUNC1 (struct irb*) ; 
 int /*<<< orphan*/  FUNC2 (struct irb*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct urdev* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ccw_device *cdev, unsigned long intparm,
			   struct irb *irb)
{
	struct urdev *urd;

	if (!FUNC1(irb)) {
		FUNC3("ur_int_handler: intparm=0x%lx cstat=%02x dstat=%02x res=%u\n",
		      intparm, irb->scsw.cmd.cstat, irb->scsw.cmd.dstat,
		      irb->scsw.cmd.count);
	}
	if (!intparm) {
		FUNC3("ur_int_handler: unsolicited interrupt\n");
		return;
	}
	urd = FUNC5(&cdev->dev);
	FUNC0(!urd);
	/* On special conditions irb is an error pointer */
	if (FUNC1(irb))
		urd->io_request_rc = FUNC2(irb);
	else if (irb->scsw.cmd.dstat == (DEV_STAT_CHN_END | DEV_STAT_DEV_END))
		urd->io_request_rc = 0;
	else
		urd->io_request_rc = -EIO;

	FUNC4(urd->io_done);
}