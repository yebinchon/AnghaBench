#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ en; } ;
union cvmx_gmxx_prtx_cfg {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
struct octeon_ethernet {int /*<<< orphan*/  port; scalar_t__ last_link; int /*<<< orphan*/ * poll; } ;
struct net_device {scalar_t__ phydev; } ;
struct TYPE_6__ {scalar_t__ u64; } ;
typedef  TYPE_2__ cvmx_helper_link_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_ethernet*,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct octeon_ethernet* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

int FUNC9(struct net_device *dev)
{
	struct octeon_ethernet *priv = FUNC7(dev);
	int interface = FUNC2(priv->port);
	cvmx_helper_link_info_t link_info;
	union cvmx_gmxx_prtx_cfg gmx_cfg;
	int index = FUNC1(priv->port);

	gmx_cfg.u64 = FUNC5(FUNC0(index, interface));
	gmx_cfg.s.en = 0;
	FUNC6(FUNC0(index, interface), gmx_cfg.u64);

	priv->poll = NULL;

	if (dev->phydev)
		FUNC8(dev->phydev);

	if (priv->last_link) {
		link_info.u64 = 0;
		priv->last_link = 0;

		FUNC4(priv->port, link_info);
		FUNC3(priv, link_info);
	}
	return 0;
}