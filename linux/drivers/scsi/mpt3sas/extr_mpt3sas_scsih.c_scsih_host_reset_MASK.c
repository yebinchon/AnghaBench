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
struct scsi_cmnd {TYPE_1__* device; } ;
struct MPT3SAS_ADAPTER {scalar_t__ remove_host; scalar_t__ is_driver_loading; } ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int FAILED ; 
 int /*<<< orphan*/  FORCE_BIG_HAMMER ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*,char*,...) ; 
 int FUNC1 (struct MPT3SAS_ADAPTER*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 
 struct MPT3SAS_ADAPTER* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct scsi_cmnd *scmd)
{
	struct MPT3SAS_ADAPTER *ioc = FUNC3(scmd->device->host);
	int r, retval;

	FUNC0(ioc, "attempting host reset! scmd(%p)\n", scmd);
	FUNC2(scmd);

	if (ioc->is_driver_loading || ioc->remove_host) {
		FUNC0(ioc, "Blocking the host reset\n");
		r = FAILED;
		goto out;
	}

	retval = FUNC1(ioc, FORCE_BIG_HAMMER);
	r = (retval < 0) ? FAILED : SUCCESS;
out:
	FUNC0(ioc, "host reset: %s scmd(%p)\n",
		 r == SUCCESS ? "SUCCESS" : "FAILED", scmd);

	return r;
}