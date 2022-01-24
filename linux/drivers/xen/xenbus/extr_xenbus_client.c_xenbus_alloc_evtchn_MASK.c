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
struct xenbus_device {int /*<<< orphan*/  otherend_id; } ;
struct evtchn_alloc_unbound {int port; int /*<<< orphan*/  remote_dom; int /*<<< orphan*/  dom; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMID_SELF ; 
 int /*<<< orphan*/  EVTCHNOP_alloc_unbound ; 
 int FUNC0 (int /*<<< orphan*/ ,struct evtchn_alloc_unbound*) ; 
 int /*<<< orphan*/  FUNC1 (struct xenbus_device*,int,char*) ; 

int FUNC2(struct xenbus_device *dev, int *port)
{
	struct evtchn_alloc_unbound alloc_unbound;
	int err;

	alloc_unbound.dom = DOMID_SELF;
	alloc_unbound.remote_dom = dev->otherend_id;

	err = FUNC0(EVTCHNOP_alloc_unbound,
					  &alloc_unbound);
	if (err)
		FUNC1(dev, err, "allocating event channel");
	else
		*port = alloc_unbound.port;

	return err;
}