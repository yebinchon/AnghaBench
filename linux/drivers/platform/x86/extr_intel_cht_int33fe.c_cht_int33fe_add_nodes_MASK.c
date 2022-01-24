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
struct cht_int33fe_data {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (struct cht_int33fe_data*) ; 
 int FUNC1 (struct cht_int33fe_data*) ; 
 TYPE_1__ mux_ref ; 
 int /*<<< orphan*/  nodes ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct cht_int33fe_data *data)
{
	int ret;

	ret = FUNC3(nodes);
	if (ret)
		return ret;

	/* The devices that are not created in this driver need extra steps. */

	/*
	 * There is no ACPI device node for the USB role mux, so we need to wait
	 * until the mux driver has created software node for the mux device.
	 * It means we depend on the mux driver. This function will return
	 * -EPROBE_DEFER until the mux device is registered.
	 */
	mux_ref.node = FUNC2(NULL, "intel-xhci-usb-sw");
	if (!mux_ref.node) {
		ret = -EPROBE_DEFER;
		goto err_remove_nodes;
	}

	/*
	 * The DP connector does have ACPI device node. In this case we can just
	 * find that ACPI node and assign our node as the secondary node to it.
	 */
	ret = FUNC1(data);
	if (ret)
		goto err_remove_nodes;

	return 0;

err_remove_nodes:
	FUNC0(data);

	return ret;
}