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
struct TYPE_2__ {char* node; int /*<<< orphan*/ * callback; } ;
struct xenvif {TYPE_1__ mcast_ctrl_watch; } ;
struct xenbus_device {char* otherend; } ;

/* Variables and functions */
 int EADDRINUSE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int,char*,char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/ * xen_mcast_ctrl_changed ; 

__attribute__((used)) static int FUNC7(struct xenbus_device *dev,
					 struct xenvif *vif)
{
	int err = 0;
	char *node;
	unsigned maxlen = FUNC6(dev->otherend) +
		sizeof("/request-multicast-control");

	if (vif->mcast_ctrl_watch.node) {
		FUNC3("Watch is already registered\n");
		return -EADDRINUSE;
	}

	node = FUNC1(maxlen, GFP_KERNEL);
	if (!node) {
		FUNC2("Failed to allocate memory for watch\n");
		return -ENOMEM;
	}
	FUNC5(node, maxlen, "%s/request-multicast-control",
		 dev->otherend);
	vif->mcast_ctrl_watch.node = node;
	vif->mcast_ctrl_watch.callback = xen_mcast_ctrl_changed;
	err = FUNC4(&vif->mcast_ctrl_watch);
	if (err) {
		FUNC2("Failed to set watcher %s\n",
		       vif->mcast_ctrl_watch.node);
		FUNC0(node);
		vif->mcast_ctrl_watch.node = NULL;
		vif->mcast_ctrl_watch.callback = NULL;
	}
	return err;
}