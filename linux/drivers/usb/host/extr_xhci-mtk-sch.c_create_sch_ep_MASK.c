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
struct xhci_ep_ctx {int dummy; } ;
struct usb_host_endpoint {int /*<<< orphan*/  desc; } ;
struct usb_device {scalar_t__ speed; } ;
struct mu3h_sch_tt {int dummy; } ;
struct mu3h_sch_ep_info {struct usb_host_endpoint* ep; struct mu3h_sch_tt* sch_tt; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mu3h_sch_ep_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct mu3h_sch_tt*) ; 
 int TT_MICROFRAMES_MAX ; 
 scalar_t__ USB_SPEED_SUPER ; 
 struct mu3h_sch_tt* FUNC2 (struct usb_device*) ; 
 int FUNC3 (struct xhci_ep_ctx*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mu3h_sch_ep_info*) ; 
 struct mu3h_sch_ep_info* FUNC6 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mu3h_sch_ep_info *FUNC8(struct usb_device *udev,
	struct usb_host_endpoint *ep, struct xhci_ep_ctx *ep_ctx)
{
	struct mu3h_sch_ep_info *sch_ep;
	struct mu3h_sch_tt *tt = NULL;
	u32 len_bw_budget_table;
	size_t mem_size;

	if (FUNC4(udev->speed))
		len_bw_budget_table = TT_MICROFRAMES_MAX;
	else if ((udev->speed >= USB_SPEED_SUPER)
			&& FUNC7(&ep->desc))
		len_bw_budget_table = FUNC3(ep_ctx);
	else
		len_bw_budget_table = 1;

	mem_size = sizeof(struct mu3h_sch_ep_info) +
			len_bw_budget_table * sizeof(u32);
	sch_ep = FUNC6(mem_size, GFP_KERNEL);
	if (!sch_ep)
		return FUNC0(-ENOMEM);

	if (FUNC4(udev->speed)) {
		tt = FUNC2(udev);
		if (FUNC1(tt)) {
			FUNC5(sch_ep);
			return FUNC0(-ENOMEM);
		}
	}

	sch_ep->sch_tt = tt;
	sch_ep->ep = ep;

	return sch_ep;
}