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
struct TYPE_2__ {int bcst; int mcst; int cam_mode; } ;
union cvmx_gmxx_rxx_adr_ctl {int u64; TYPE_1__ s; } ;
union cvmx_gmxx_prtx_cfg {unsigned long long u64; } ;
struct octeon_ethernet {int /*<<< orphan*/  port; } ;
struct net_device {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__ CVMX_HELPER_INTERFACE_MODE_SPI ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 unsigned long long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 struct octeon_ethernet* FUNC9 (struct net_device*) ; 

__attribute__((used)) static void FUNC10(struct net_device *dev)
{
	union cvmx_gmxx_prtx_cfg gmx_cfg;
	struct octeon_ethernet *priv = FUNC9(dev);
	int interface = FUNC4(priv->port);

	if ((interface < 2) &&
	    (FUNC5(interface) !=
		CVMX_HELPER_INTERFACE_MODE_SPI)) {
		union cvmx_gmxx_rxx_adr_ctl control;
		int index = FUNC3(priv->port);

		control.u64 = 0;
		control.s.bcst = 1;	/* Allow broadcast MAC addresses */

		if (!FUNC8(dev) || (dev->flags & IFF_ALLMULTI) ||
		    (dev->flags & IFF_PROMISC))
			/* Force accept multicast packets */
			control.s.mcst = 2;
		else
			/* Force reject multicast packets */
			control.s.mcst = 1;

		if (dev->flags & IFF_PROMISC)
			/*
			 * Reject matches if promisc. Since CAM is
			 * shut off, should accept everything.
			 */
			control.s.cam_mode = 0;
		else
			/* Filter packets based on the CAM */
			control.s.cam_mode = 1;

		gmx_cfg.u64 =
		    FUNC6(FUNC0(index, interface));
		FUNC7(FUNC0(index, interface),
			       gmx_cfg.u64 & ~1ull);

		FUNC7(FUNC2(index, interface),
			       control.u64);
		if (dev->flags & IFF_PROMISC)
			FUNC7(FUNC1
				       (index, interface), 0);
		else
			FUNC7(FUNC1
				       (index, interface), 1);

		FUNC7(FUNC0(index, interface),
			       gmx_cfg.u64);
	}
}