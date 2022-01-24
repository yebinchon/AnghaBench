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
struct imx_usbmisc_data {int index; int /*<<< orphan*/  dev; } ;
struct imx_usbmisc {int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 int EINVAL ; 
 int MX6_BM_ID_WAKEUP ; 
 int MX6_BM_VBUS_WAKEUP ; 
 int MX6_BM_WAKEUP_ENABLE ; 
 int MX6_BM_WAKEUP_INTR ; 
 struct imx_usbmisc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6
	(struct imx_usbmisc_data *data, bool enabled)
{
	struct imx_usbmisc *usbmisc = FUNC0(data->dev);
	unsigned long flags;
	u32 val;
	u32 wakeup_setting = (MX6_BM_WAKEUP_ENABLE |
		MX6_BM_VBUS_WAKEUP | MX6_BM_ID_WAKEUP);
	int ret = 0;

	if (data->index > 3)
		return -EINVAL;

	FUNC3(&usbmisc->lock, flags);
	val = FUNC2(usbmisc->base + data->index * 4);
	if (enabled) {
		val |= wakeup_setting;
	} else {
		if (val & MX6_BM_WAKEUP_INTR)
			FUNC1("wakeup int at ci_hdrc.%d\n", data->index);
		val &= ~wakeup_setting;
	}
	FUNC5(val, usbmisc->base + data->index * 4);
	FUNC4(&usbmisc->lock, flags);

	return ret;
}