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
struct imx_usbmisc {int /*<<< orphan*/  lock; scalar_t__ base; } ;

/* Variables and functions */
 int MX6_BM_HSIC_DEV_CONN ; 
 scalar_t__ MX6_USB_HSIC_CTRL_OFFSET ; 
 struct imx_usbmisc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (struct imx_usbmisc_data*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct imx_usbmisc_data *data)
{
	unsigned long flags;
	u32 val;
	struct imx_usbmisc *usbmisc = FUNC0(data->dev);
	int offset;

	FUNC2(&usbmisc->lock, flags);
	offset = FUNC4(data);
	if (offset < 0) {
		FUNC3(&usbmisc->lock, flags);
		return offset;
	}

	val = FUNC1(usbmisc->base + MX6_USB_HSIC_CTRL_OFFSET + offset);
	if (!(val & MX6_BM_HSIC_DEV_CONN))
		FUNC5(val | MX6_BM_HSIC_DEV_CONN,
			usbmisc->base + MX6_USB_HSIC_CTRL_OFFSET + offset);

	FUNC3(&usbmisc->lock, flags);

	return 0;
}