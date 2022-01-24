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
struct uwb_mac_addr {int* data; } ;
struct device {int dummy; } ;
struct uwb_dev {struct uwb_mac_addr mac_addr; struct device dev; } ;
struct uwb_rc {struct uwb_dev uwb_dev; } ;
typedef  int /*<<< orphan*/  devname ;

/* Variables and functions */
 int UWB_ADDR_STRSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 scalar_t__ FUNC2 (struct uwb_mac_addr*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct uwb_mac_addr*) ; 
 scalar_t__ FUNC4 (struct uwb_mac_addr*) ; 
 int FUNC5 (struct uwb_rc*,struct uwb_mac_addr*) ; 
 int FUNC6 (struct uwb_rc*,struct uwb_mac_addr*) ; 

__attribute__((used)) static
int FUNC7(struct uwb_rc *rc)
{
	int result;
	struct device *dev = &rc->uwb_dev.dev;
	struct uwb_dev *uwb_dev = &rc->uwb_dev;
	char devname[UWB_ADDR_STRSIZE];
	struct uwb_mac_addr addr;

	result = FUNC5(rc, &addr);
	if (result < 0) {
		FUNC0(dev, "cannot retrieve UWB EUI-48 address: %d\n", result);
		return result;
	}

	if (FUNC4(&addr) || FUNC2(&addr)) {
		addr.data[0] = 0x02; /* locally administered and unicast */
		FUNC1(&addr.data[1], sizeof(addr.data)-1);

		result = FUNC6(rc, &addr);
		if (result < 0) {
			FUNC3(devname, sizeof(devname), &addr);
			FUNC0(dev, "cannot set EUI-48 address %s: %d\n",
				devname, result);
			return result;
		}
	}
	uwb_dev->mac_addr = addr;
	return 0;
}