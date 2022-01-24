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
struct TYPE_2__ {char* nodename; } ;

/* Variables and functions */
 int ENOMEM ; 
 int PCI_VENDOR_ID_INTEL ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 () ; 
 int /*<<< orphan*/ * xdomain_property_dir ; 

int FUNC6(void)
{
	int ret;

	xdomain_property_dir = FUNC3(NULL);
	if (!xdomain_property_dir)
		return -ENOMEM;

	/*
	 * Initialize standard set of properties without any service
	 * directories. Those will be added by service drivers
	 * themselves when they are loaded.
	 */
	FUNC1(xdomain_property_dir, "vendorid",
				  PCI_VENDOR_ID_INTEL);
	FUNC2(xdomain_property_dir, "vendorid", "Intel Corp.");
	FUNC1(xdomain_property_dir, "deviceid", 0x1);
	FUNC2(xdomain_property_dir, "deviceid",
			     FUNC5()->nodename);
	FUNC1(xdomain_property_dir, "devicerv", 0x80000100);

	ret = FUNC0();
	if (ret) {
		FUNC4(xdomain_property_dir);
		xdomain_property_dir = NULL;
	}

	return ret;
}