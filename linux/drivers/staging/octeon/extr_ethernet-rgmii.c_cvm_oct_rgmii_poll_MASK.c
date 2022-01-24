#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct octeon_ethernet {scalar_t__ link_info; int /*<<< orphan*/  port; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {scalar_t__ link_up; } ;
struct TYPE_7__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef  TYPE_2__ cvmx_helper_link_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct octeon_ethernet*,TYPE_2__) ; 
 TYPE_2__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_2__) ; 
 scalar_t__ FUNC4 (int) ; 
 struct octeon_ethernet* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev)
{
	struct octeon_ethernet *priv = FUNC5(dev);
	cvmx_helper_link_info_t link_info;
	bool status_change;

	link_info = FUNC2(priv->port);
	if (priv->link_info != link_info.u64 &&
	    FUNC3(priv->port, link_info))
		link_info.u64 = priv->link_info;
	status_change = priv->link_info != link_info.u64;
	priv->link_info = link_info.u64;

	FUNC0(dev);

	if (FUNC4(!status_change))
		return;

	/* Tell core. */
	if (link_info.s.link_up) {
		if (!FUNC7(dev))
			FUNC8(dev);
	} else if (FUNC7(dev)) {
		FUNC6(dev);
	}
	FUNC1(priv, link_info);
}