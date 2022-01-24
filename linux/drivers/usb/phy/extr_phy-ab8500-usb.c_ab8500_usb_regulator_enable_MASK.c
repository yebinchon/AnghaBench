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
struct ab8500_usb {int flags; scalar_t__ saved_v_ulpi; int /*<<< orphan*/  dev; int /*<<< orphan*/  v_musb; int /*<<< orphan*/  v_ulpi; int /*<<< orphan*/  v_ape; } ;

/* Variables and functions */
 int AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC5(struct ab8500_usb *ab)
{
	int ret, volt;

	ret = FUNC1(ab->v_ape);
	if (ret)
		FUNC0(ab->dev, "Failed to enable v-ape\n");

	if (ab->flags & AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE) {
		ab->saved_v_ulpi = FUNC2(ab->v_ulpi);
		if (ab->saved_v_ulpi < 0)
			FUNC0(ab->dev, "Failed to get v_ulpi voltage\n");

		ret = FUNC4(ab->v_ulpi, 1300000, 1350000);
		if (ret < 0)
			FUNC0(ab->dev, "Failed to set the Vintcore to 1.3V, ret=%d\n",
					ret);

		ret = FUNC3(ab->v_ulpi, 28000);
		if (ret < 0)
			FUNC0(ab->dev, "Failed to set optimum mode (ret=%d)\n",
					ret);
	}

	ret = FUNC1(ab->v_ulpi);
	if (ret)
		FUNC0(ab->dev, "Failed to enable vddulpivio18\n");

	if (ab->flags & AB8500_USB_FLAG_REGULATOR_SET_VOLTAGE) {
		volt = FUNC2(ab->v_ulpi);
		if ((volt != 1300000) && (volt != 1350000))
			FUNC0(ab->dev, "Vintcore is not set to 1.3V volt=%d\n",
					volt);
	}

	ret = FUNC1(ab->v_musb);
	if (ret)
		FUNC0(ab->dev, "Failed to enable musb_1v8\n");
}