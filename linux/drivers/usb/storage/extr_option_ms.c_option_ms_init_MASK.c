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
struct us_data {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int USB_STOR_XFER_GOOD ; 
 scalar_t__ ZCD_ALLOW_MS ; 
 scalar_t__ ZCD_FORCE_MODEM ; 
 int FUNC0 (struct us_data*) ; 
 int FUNC1 (struct us_data*) ; 
 scalar_t__ option_zero_cd ; 
 int /*<<< orphan*/  FUNC2 (struct us_data*,char*,char*) ; 

int FUNC3(struct us_data *us)
{
	int result;

	FUNC2(us, "Option MS: %s\n", "option_ms_init called");

	/*
	 * Additional test for vendor information via INQUIRY,
	 * because some vendor/product IDs are ambiguous
	 */
	result = FUNC0(us);
	if (result != 0) {
		FUNC2(us, "Option MS: %s\n",
			     "vendor is not Option or not determinable, no action taken");
		return 0;
	} else
		FUNC2(us, "Option MS: %s\n",
			     "this is a genuine Option device, proceeding");

	/* Force Modem mode */
	if (option_zero_cd == ZCD_FORCE_MODEM) {
		FUNC2(us, "Option MS: %s\n", "Forcing Modem Mode");
		result = FUNC1(us);
		if (result != USB_STOR_XFER_GOOD)
			FUNC2(us, "Option MS: %s\n",
				     "Failed to switch to modem mode");
		return -EIO;
	} else if (option_zero_cd == ZCD_ALLOW_MS) {
		/* Allow Mass Storage mode (keep CD-Rom) */
		FUNC2(us, "Option MS: %s\n",
			     "Allowing Mass Storage Mode if device requests it");
	}

	return 0;
}