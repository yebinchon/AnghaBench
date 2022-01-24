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
typedef  int /*<<< orphan*/  u32 ;
struct usb_hcd {int /*<<< orphan*/  regs; } ;
struct isp1760_hcd {int i_thresh; int /*<<< orphan*/  periodic_size; int /*<<< orphan*/ * qh_list; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_I_TDPS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HC_HCCPARAMS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int QH_END ; 
 struct isp1760_hcd* FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct usb_hcd *hcd)
{
	struct isp1760_hcd		*priv = FUNC3(hcd);
	u32			hcc_params;
	int i;

	FUNC5(&priv->lock);

	for (i = 0; i < QH_END; i++)
		FUNC2(&priv->qh_list[i]);

	/*
	 * hw default: 1K periodic list heads, one per frame.
	 * periodic_size can shrink by USBCMD update if hcc_params allows.
	 */
	priv->periodic_size = DEFAULT_I_TDPS;

	/* controllers may cache some of the periodic schedule ... */
	hcc_params = FUNC4(hcd->regs, HC_HCCPARAMS);
	/* full frame cache */
	if (FUNC0(hcc_params))
		priv->i_thresh = 8;
	else /* N microframes cached */
		priv->i_thresh = 2 + FUNC1(hcc_params);

	return 0;
}