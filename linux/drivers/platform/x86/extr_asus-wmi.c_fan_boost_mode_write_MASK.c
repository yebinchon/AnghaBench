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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct asus_wmi {int /*<<< orphan*/  fan_boost_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASUS_WMI_DEVID_FAN_BOOST_MODE ; 
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(struct asus_wmi *asus)
{
	int err;
	u8 value;
	u32 retval;

	value = asus->fan_boost_mode;

	FUNC1("Set fan boost mode: %u\n", value);
	err = FUNC0(ASUS_WMI_DEVID_FAN_BOOST_MODE, value,
				    &retval);
	if (err) {
		FUNC2("Failed to set fan boost mode: %d\n", err);
		return err;
	}

	if (retval != 1) {
		FUNC2("Failed to set fan boost mode (retval): 0x%x\n",
			retval);
		return -EIO;
	}

	return 0;
}