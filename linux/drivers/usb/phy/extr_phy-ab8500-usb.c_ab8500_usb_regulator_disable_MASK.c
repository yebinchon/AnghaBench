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
struct ab8500_usb {int flags; scalar_t__ saved_v_ulpi; int /*<<< orphan*/  v_ape; int /*<<< orphan*/  dev; int /*<<< orphan*/  v_ulpi; int /*<<< orphan*/  v_musb; } ;

/* Variables and functions */
 int AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct ab8500_usb *ab)
{
	int ret;

	FUNC1(ab->v_musb);

	FUNC1(ab->v_ulpi);

	/* USB is not the only consumer of Vintcore, restore old settings */
	if (ab->flags & AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE) {
		if (ab->saved_v_ulpi > 0) {
			ret = FUNC3(ab->v_ulpi,
					ab->saved_v_ulpi, ab->saved_v_ulpi);
			if (ret < 0)
				FUNC0(ab->dev, "Failed to set the Vintcore to %duV, ret=%d\n",
						ab->saved_v_ulpi, ret);
		}

		ret = FUNC2(ab->v_ulpi, 0);
		if (ret < 0)
			FUNC0(ab->dev, "Failed to set optimum mode (ret=%d)\n",
					ret);
	}

	FUNC1(ab->v_ape);
}