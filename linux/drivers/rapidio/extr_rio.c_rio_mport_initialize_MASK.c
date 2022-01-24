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
struct rio_mport {int /*<<< orphan*/  pwrites; scalar_t__ pwe_refcnt; int /*<<< orphan*/  lock; int /*<<< orphan*/ * nscan; scalar_t__ id; int /*<<< orphan*/  host_deviceid; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RIO_DEVICE_INITIALIZING ; 
 scalar_t__ RIO_MAX_MPORTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ next_portid ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

int FUNC5(struct rio_mport *mport)
{
	if (next_portid >= RIO_MAX_MPORTS) {
		FUNC3("RIO: reached specified max number of mports\n");
		return -ENODEV;
	}

	FUNC1(&mport->state, RIO_DEVICE_INITIALIZING);
	mport->id = next_portid++;
	mport->host_deviceid = FUNC4(mport->id);
	mport->nscan = NULL;
	FUNC2(&mport->lock);
	mport->pwe_refcnt = 0;
	FUNC0(&mport->pwrites);

	return 0;
}