#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct dasd_device {scalar_t__ path_thrhld; int path_interval; TYPE_5__* path; } ;
struct dasd_ccw_req {TYPE_4__* refers; struct dasd_device* startdev; } ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_10__ {unsigned long errorclk; int /*<<< orphan*/  error_count; } ;
struct TYPE_6__ {int /*<<< orphan*/  lpum; } ;
struct TYPE_7__ {TYPE_1__ esw1; } ;
struct TYPE_8__ {TYPE_2__ esw; } ;
struct TYPE_9__ {TYPE_3__ irb; } ;

/* Variables and functions */
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_device*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (unsigned long) ; 

__attribute__((used)) static void FUNC7(struct dasd_ccw_req *erp)
{
	struct dasd_device *device = erp->startdev;
	__u8 lpum = erp->refers->irb.esw.esw1.lpum;
	int pos = FUNC5(lpum);
	unsigned long clk;

	if (!device->path_thrhld)
		return;

	clk = FUNC4();
	/*
	 * check if the last error is longer ago than the timeout,
	 * if so reset error state
	 */
	if ((FUNC6(clk - device->path[pos].errorclk) / NSEC_PER_SEC)
	    >= device->path_interval) {
		FUNC2(&device->path[pos].error_count, 0);
		device->path[pos].errorclk = 0;
	}
	FUNC0(&device->path[pos].error_count);
	device->path[pos].errorclk = clk;
	/* threshold exceeded disable path if possible */
	if (FUNC1(&device->path[pos].error_count) >=
	    device->path_thrhld)
		FUNC3(device, lpum);
}