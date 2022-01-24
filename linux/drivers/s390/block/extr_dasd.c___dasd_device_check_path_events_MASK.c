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
struct dasd_device {int stopped; TYPE_1__* discipline; } ;
struct TYPE_2__ {int (* verify_path ) (struct dasd_device*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int DASD_STOPPED_DC_WAIT ; 
 int DASD_UNRESUMED_PM ; 
 int /*<<< orphan*/  FUNC0 (struct dasd_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 
 int FUNC3 (struct dasd_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dasd_device *device)
{
	int rc;

	if (!FUNC2(device))
		return;

	if (device->stopped &
	    ~(DASD_STOPPED_DC_WAIT | DASD_UNRESUMED_PM))
		return;
	rc = device->discipline->verify_path(device,
					     FUNC2(device));
	if (rc)
		FUNC0(device, 50);
	else
		FUNC1(device);
}