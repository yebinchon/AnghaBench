#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wusbhc {int /*<<< orphan*/  mutex; int /*<<< orphan*/  cluster_id; } ;
struct whc {scalar_t__ base; TYPE_1__* umc; } ;
struct usb_hcd {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  WUSBCMD_RUN ; 
 scalar_t__ WUSBINTR ; 
 scalar_t__ WUSBSTS ; 
 int /*<<< orphan*/  WUSBSTS_HCHALTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct wusbhc* FUNC3 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC4 (struct whc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct whc* FUNC7 (struct wusbhc*) ; 

__attribute__((used)) static void FUNC8(struct usb_hcd *usb_hcd)
{
	struct wusbhc *wusbhc = FUNC3(usb_hcd);
	struct whc *whc = FUNC7(wusbhc);

	FUNC1(&wusbhc->mutex);

	/* stop HC */
	FUNC0(0, whc->base + WUSBINTR);
	FUNC4(whc, WUSBCMD_RUN, 0);
	FUNC5(&whc->umc->dev, whc->base + WUSBSTS,
		      WUSBSTS_HCHALTED, WUSBSTS_HCHALTED,
		      100, "HC to halt");

	FUNC6(wusbhc->cluster_id);

	FUNC2(&wusbhc->mutex);
}