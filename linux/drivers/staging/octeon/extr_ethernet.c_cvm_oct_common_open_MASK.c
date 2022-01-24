#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int en; int /*<<< orphan*/  pknd; } ;
union cvmx_gmxx_prtx_cfg {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
struct octeon_ethernet {void (* poll ) (struct net_device*) ;int /*<<< orphan*/  port; } ;
struct net_device {TYPE_4__* phydev; } ;
struct TYPE_7__ {int /*<<< orphan*/  link_up; } ;
struct TYPE_8__ {TYPE_2__ s; } ;
typedef  TYPE_3__ cvmx_helper_link_info_t ;
struct TYPE_9__ {scalar_t__ link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCTEON_FEATURE_PKND ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*) ; 
 TYPE_3__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct octeon_ethernet* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 () ; 
 int FUNC12 (TYPE_4__*) ; 

int FUNC13(struct net_device *dev,
			void (*link_poll)(struct net_device *))
{
	union cvmx_gmxx_prtx_cfg gmx_cfg;
	struct octeon_ethernet *priv = FUNC8(dev);
	int interface = FUNC2(priv->port);
	int index = FUNC1(priv->port);
	cvmx_helper_link_info_t link_info;
	int rv;

	rv = FUNC4(dev);
	if (rv)
		return rv;

	gmx_cfg.u64 = FUNC6(FUNC0(index, interface));
	gmx_cfg.s.en = 1;
	if (FUNC10(OCTEON_FEATURE_PKND))
		gmx_cfg.s.pknd = priv->port;
	FUNC7(FUNC0(index, interface), gmx_cfg.u64);

	if (FUNC11())
		return 0;

	if (dev->phydev) {
		int r = FUNC12(dev->phydev);

		if (r == 0 && dev->phydev->link == 0)
			FUNC9(dev);
		FUNC3(dev);
	} else {
		link_info = FUNC5(priv->port);
		if (!link_info.s.link_up)
			FUNC9(dev);
		priv->poll = link_poll;
		link_poll(dev);
	}

	return 0;
}