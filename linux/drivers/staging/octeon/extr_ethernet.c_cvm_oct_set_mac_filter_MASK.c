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
union cvmx_gmxx_prtx_cfg {unsigned long long u64; } ;
typedef  int u8 ;
typedef  int u64 ;
struct octeon_ethernet {int /*<<< orphan*/  port; } ;
struct net_device {int* dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 scalar_t__ CVMX_HELPER_INTERFACE_MODE_SPI ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 scalar_t__ FUNC11 (int) ; 
 unsigned long long FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 struct octeon_ethernet* FUNC14 (struct net_device*) ; 

__attribute__((used)) static int FUNC15(struct net_device *dev)
{
	struct octeon_ethernet *priv = FUNC14(dev);
	union cvmx_gmxx_prtx_cfg gmx_cfg;
	int interface = FUNC9(priv->port);

	if ((interface < 2) &&
	    (FUNC11(interface) !=
		CVMX_HELPER_INTERFACE_MODE_SPI)) {
		int i;
		u8 *ptr = dev->dev_addr;
		u64 mac = 0;
		int index = FUNC8(priv->port);

		for (i = 0; i < 6; i++)
			mac = (mac << 8) | (u64)ptr[i];

		gmx_cfg.u64 =
		    FUNC12(FUNC0(index, interface));
		FUNC13(FUNC0(index, interface),
			       gmx_cfg.u64 & ~1ull);

		FUNC13(FUNC7(index, interface), mac);
		FUNC13(FUNC1(index, interface),
			       ptr[0]);
		FUNC13(FUNC2(index, interface),
			       ptr[1]);
		FUNC13(FUNC3(index, interface),
			       ptr[2]);
		FUNC13(FUNC4(index, interface),
			       ptr[3]);
		FUNC13(FUNC5(index, interface),
			       ptr[4]);
		FUNC13(FUNC6(index, interface),
			       ptr[5]);
		FUNC10(dev);
		FUNC13(FUNC0(index, interface),
			       gmx_cfg.u64);
	}
	return 0;
}