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
 int /*<<< orphan*/  FUNC0 (struct octeon_ethernet*,TYPE_2__) ; 
 TYPE_2__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_2__) ; 
 struct octeon_ethernet* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

void FUNC7(struct net_device *dev)
{
	struct octeon_ethernet *priv = FUNC3(dev);
	cvmx_helper_link_info_t link_info;

	link_info = FUNC1(priv->port);
	if (link_info.u64 == priv->link_info)
		return;

	if (FUNC2(priv->port, link_info))
		link_info.u64 = priv->link_info;
	else
		priv->link_info = link_info.u64;

	if (link_info.s.link_up) {
		if (!FUNC5(dev))
			FUNC6(dev);
	} else if (FUNC5(dev)) {
		FUNC4(dev);
	}
	FUNC0(priv, link_info);
}