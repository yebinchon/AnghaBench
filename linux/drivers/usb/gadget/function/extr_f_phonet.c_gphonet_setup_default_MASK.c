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
struct phonet_port {int /*<<< orphan*/  lock; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NET_NAME_UNKNOWN ; 
 struct net_device* FUNC1 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct phonet_port* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  pn_net_setup ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct net_device *FUNC5(void)
{
	struct net_device *dev;
	struct phonet_port *port;

	/* Create net device */
	dev = FUNC1(sizeof(*port), "upnlink%d", NET_NAME_UNKNOWN,
			   pn_net_setup);
	if (!dev)
		return FUNC0(-ENOMEM);

	port = FUNC2(dev);
	FUNC4(&port->lock);
	FUNC3(dev);

	return dev;
}