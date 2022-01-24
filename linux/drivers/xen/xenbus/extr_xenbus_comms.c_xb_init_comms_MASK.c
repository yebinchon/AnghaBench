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
struct xenstore_domain_interface {scalar_t__ req_prod; scalar_t__ req_cons; scalar_t__ rsp_prod; scalar_t__ rsp_cons; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  reset_devices ; 
 int /*<<< orphan*/  wake_waiting ; 
 int /*<<< orphan*/  xb_waitq ; 
 int /*<<< orphan*/  xen_store_evtchn ; 
 struct xenstore_domain_interface* xen_store_interface ; 
 int xenbus_irq ; 
 scalar_t__ xenbus_task ; 
 int /*<<< orphan*/  xenbus_thread ; 

int FUNC7(void)
{
	struct xenstore_domain_interface *intf = xen_store_interface;

	if (intf->req_prod != intf->req_cons)
		FUNC4("request ring is not quiescent (%08x:%08x)!\n",
		       intf->req_cons, intf->req_prod);

	if (intf->rsp_prod != intf->rsp_cons) {
		FUNC5("response ring is not quiescent (%08x:%08x): fixing up\n",
			intf->rsp_cons, intf->rsp_prod);
		/* breaks kdump */
		if (!reset_devices)
			intf->rsp_cons = intf->rsp_prod;
	}

	if (xenbus_irq) {
		/* Already have an irq; assume we're resuming */
		FUNC6(xen_store_evtchn, xenbus_irq);
	} else {
		int err;

		err = FUNC2(xen_store_evtchn, wake_waiting,
						0, "xenbus", &xb_waitq);
		if (err < 0) {
			FUNC4("request irq failed %i\n", err);
			return err;
		}

		xenbus_irq = err;

		if (!xenbus_task) {
			xenbus_task = FUNC3(xenbus_thread, NULL,
						  "xenbus");
			if (FUNC0(xenbus_task))
				return FUNC1(xenbus_task);
		}
	}

	return 0;
}