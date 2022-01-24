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
typedef  int u32 ;
struct imx_usbmisc_data {int /*<<< orphan*/  dev; } ;
struct imx_usbmisc {int /*<<< orphan*/  lock; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int MX6_BM_ID_WAKEUP ; 
 int MX6_BM_VBUS_WAKEUP ; 
 int MX6_BM_WAKEUP_ENABLE ; 
 int MX6_BM_WAKEUP_INTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct imx_usbmisc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6
	(struct imx_usbmisc_data *data, bool enabled)
{
	struct imx_usbmisc *usbmisc = FUNC1(data->dev);
	unsigned long flags;
	u32 val;
	u32 wakeup_setting = (MX6_BM_WAKEUP_ENABLE |
		MX6_BM_VBUS_WAKEUP | MX6_BM_ID_WAKEUP);

	FUNC3(&usbmisc->lock, flags);
	val = FUNC2(usbmisc->base);
	if (enabled) {
		FUNC5(val | wakeup_setting, usbmisc->base);
	} else {
		if (val & MX6_BM_WAKEUP_INTR)
			FUNC0(data->dev, "wakeup int\n");
		FUNC5(val & ~wakeup_setting, usbmisc->base);
	}
	FUNC4(&usbmisc->lock, flags);

	return 0;
}