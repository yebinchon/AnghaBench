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
typedef  int u32 ;
struct tb {int dummy; } ;
struct icm {int /*<<< orphan*/  upstream_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_PORT_CS1 ; 
 int PHY_PORT_CS1_LINK_DISABLE ; 
 int PHY_PORT_CS1_LINK_STATE_MASK ; 
 int PHY_PORT_CS1_LINK_STATE_SHIFT ; 
 int /*<<< orphan*/  TB_CFG_PORT ; 
 int TB_PORT_UP ; 
 int FUNC0 (struct icm*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct icm*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 struct icm* FUNC2 (struct tb*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct tb *tb, int phy_port)
{
	struct icm *icm = FUNC2(tb);
	u32 state0, state1;
	int port0, port1;
	u32 val0, val1;
	int ret;

	if (!icm->upstream_port)
		return 0;

	if (phy_port) {
		port0 = 3;
		port1 = 4;
	} else {
		port0 = 1;
		port1 = 2;
	}

	/*
	 * Read link status of both null ports belonging to a single
	 * physical port.
	 */
	ret = FUNC0(icm, TB_CFG_PORT, port0, PHY_PORT_CS1, &val0);
	if (ret)
		return ret;
	ret = FUNC0(icm, TB_CFG_PORT, port1, PHY_PORT_CS1, &val1);
	if (ret)
		return ret;

	state0 = val0 & PHY_PORT_CS1_LINK_STATE_MASK;
	state0 >>= PHY_PORT_CS1_LINK_STATE_SHIFT;
	state1 = val1 & PHY_PORT_CS1_LINK_STATE_MASK;
	state1 >>= PHY_PORT_CS1_LINK_STATE_SHIFT;

	/* If they are both up we need to reset them now */
	if (state0 != TB_PORT_UP || state1 != TB_PORT_UP)
		return 0;

	val0 |= PHY_PORT_CS1_LINK_DISABLE;
	ret = FUNC1(icm, TB_CFG_PORT, port0, PHY_PORT_CS1, val0);
	if (ret)
		return ret;

	val1 |= PHY_PORT_CS1_LINK_DISABLE;
	ret = FUNC1(icm, TB_CFG_PORT, port1, PHY_PORT_CS1, val1);
	if (ret)
		return ret;

	/* Wait a bit and then re-enable both ports */
	FUNC3(10, 100);

	ret = FUNC0(icm, TB_CFG_PORT, port0, PHY_PORT_CS1, &val0);
	if (ret)
		return ret;
	ret = FUNC0(icm, TB_CFG_PORT, port1, PHY_PORT_CS1, &val1);
	if (ret)
		return ret;

	val0 &= ~PHY_PORT_CS1_LINK_DISABLE;
	ret = FUNC1(icm, TB_CFG_PORT, port0, PHY_PORT_CS1, val0);
	if (ret)
		return ret;

	val1 &= ~PHY_PORT_CS1_LINK_DISABLE;
	return FUNC1(icm, TB_CFG_PORT, port1, PHY_PORT_CS1, val1);
}