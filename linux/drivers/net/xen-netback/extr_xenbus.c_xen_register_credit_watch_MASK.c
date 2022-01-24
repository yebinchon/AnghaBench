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
struct xenvif {TYPE_1__ credit_watch; } ;
struct xenbus_device {char* nodename; } ;

/* Variables and functions */
 int EADDRINUSE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,char*,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/ * xen_net_rate_changed ; 

__attribute__((used)) static int FUNC6(struct xenbus_device *dev,
				     struct xenvif *vif)
{
	int err = 0;
	char *node;
	unsigned maxlen = FUNC5(dev->nodename) + sizeof("/rate");

	if (vif->credit_watch.node)
		return -EADDRINUSE;

	node = FUNC1(maxlen, GFP_KERNEL);
	if (!node)
		return -ENOMEM;
	FUNC4(node, maxlen, "%s/rate", dev->nodename);
	vif->credit_watch.node = node;
	vif->credit_watch.callback = xen_net_rate_changed;
	err = FUNC3(&vif->credit_watch);
	if (err) {
		FUNC2("Failed to set watcher %s\n", vif->credit_watch.node);
		FUNC0(node);
		vif->credit_watch.node = NULL;
		vif->credit_watch.callback = NULL;
	}
	return err;
}