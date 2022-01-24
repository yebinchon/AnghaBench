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
struct usb_phy {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  ULPI_SCRATCH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct usb_phy*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usb_phy*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_phy *phy)
{
	int ret, i;
	unsigned int val = 0x55;

	for (i = 0; i < 2; i++) {
		ret = FUNC3(phy, val, ULPI_SCRATCH);
		if (ret < 0)
			return ret;

		ret = FUNC2(phy, ULPI_SCRATCH);
		if (ret < 0)
			return ret;

		if (ret != val) {
			FUNC0("ULPI integrity check: failed!");
			return -ENODEV;
		}
		val = val << 1;
	}

	FUNC1("ULPI integrity check: passed.\n");

	return 0;
}