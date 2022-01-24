#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nfcmrvl_usb_drv_data {int /*<<< orphan*/  deferred; TYPE_1__* intf; int /*<<< orphan*/  tx_anchor; int /*<<< orphan*/  flags; int /*<<< orphan*/  waker; } ;
struct nfcmrvl_private {struct nfcmrvl_usb_drv_data* drv_data; } ;
struct TYPE_3__ {scalar_t__ needs_remote_wakeup; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFCMRVL_USB_BULK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfcmrvl_usb_drv_data*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct nfcmrvl_private *priv)
{
	struct nfcmrvl_usb_drv_data *drv_data = priv->drv_data;
	int err;

	FUNC0(&drv_data->waker);

	FUNC1(NFCMRVL_USB_BULK_RUNNING, &drv_data->flags);

	FUNC2(drv_data);
	FUNC5(&drv_data->tx_anchor);
	err = FUNC3(drv_data->intf);
	if (err)
		goto failed;

	drv_data->intf->needs_remote_wakeup = 0;
	FUNC4(drv_data->intf);

failed:
	FUNC6(&drv_data->deferred);
	return 0;
}