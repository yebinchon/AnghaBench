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
struct evtchn_alloc_unbound {scalar_t__ port; int /*<<< orphan*/  remote_dom; int /*<<< orphan*/  dom; } ;
typedef  int /*<<< orphan*/  domid_t ;

/* Variables and functions */
 int /*<<< orphan*/  DOMID_SELF ; 
 int EEXIST ; 
 int /*<<< orphan*/  EVTCHNOP_alloc_unbound ; 
 int /*<<< orphan*/  GNTTAB_RESERVED_XENSTORE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct evtchn_alloc_unbound*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ xen_store_evtchn ; 
 int /*<<< orphan*/  xen_store_interface ; 
 scalar_t__ xenstored_ready ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static long FUNC7(domid_t domid)
{
	struct evtchn_alloc_unbound arg;
	int err = -EEXIST;

	FUNC5();

	/* If xenstored_ready is nonzero, that means we have already talked to
	 * xenstore and set up watches. These watches will be restored by
	 * xs_resume, but that requires communication over the port established
	 * below that is not visible to anyone until the ioctl returns.
	 *
	 * This can be resolved by splitting the ioctl into two parts
	 * (postponing the resume until xenstored is active) but this is
	 * unnecessarily complex for the intended use where xenstored is only
	 * started once - so return -EEXIST if it's already running.
	 */
	if (xenstored_ready)
		goto out_err;

	FUNC1(GNTTAB_RESERVED_XENSTORE, domid,
			FUNC2(xen_store_interface), 0 /* writable */);

	arg.dom = DOMID_SELF;
	arg.remote_dom = domid;

	err = FUNC0(EVTCHNOP_alloc_unbound, &arg);
	if (err)
		goto out_err;

	if (xen_store_evtchn > 0)
		FUNC3();

	xen_store_evtchn = arg.port;

	FUNC4();

	return arg.port;

 out_err:
	FUNC6();
	return err;
}