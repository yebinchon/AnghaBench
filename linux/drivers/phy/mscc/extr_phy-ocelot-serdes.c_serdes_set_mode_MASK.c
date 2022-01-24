#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct serdes_macro {scalar_t__ idx; scalar_t__ port; TYPE_1__* ctrl; } ;
struct phy {int dummy; } ;
typedef  enum phy_mode { ____Placeholder_phy_mode } phy_mode ;
struct TYPE_5__ {scalar_t__ idx; int mode; int submode; scalar_t__ port; int /*<<< orphan*/  mux; int /*<<< orphan*/  mask; } ;
struct TYPE_4__ {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_2__*) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  HSIO_HW_CFG ; 
 int PHY_INTERFACE_MODE_QSGMII ; 
 int PHY_MODE_ETHERNET ; 
 scalar_t__ SERDES1G_MAX ; 
 scalar_t__ SERDES6G_MAX ; 
 TYPE_2__* ocelot_serdes_muxes ; 
 struct serdes_macro* FUNC1 (struct phy*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int FUNC5(struct phy *phy, enum phy_mode mode, int submode)
{
	struct serdes_macro *macro = FUNC1(phy);
	unsigned int i;
	int ret;

	/* As of now only PHY_MODE_ETHERNET is supported */
	if (mode != PHY_MODE_ETHERNET)
		return -EOPNOTSUPP;

	for (i = 0; i < FUNC0(ocelot_serdes_muxes); i++) {
		if (macro->idx != ocelot_serdes_muxes[i].idx ||
		    mode != ocelot_serdes_muxes[i].mode ||
		    submode != ocelot_serdes_muxes[i].submode)
			continue;

		if (submode != PHY_INTERFACE_MODE_QSGMII &&
		    macro->port != ocelot_serdes_muxes[i].port)
			continue;

		ret = FUNC2(macro->ctrl->regs, HSIO_HW_CFG,
					 ocelot_serdes_muxes[i].mask,
					 ocelot_serdes_muxes[i].mux);
		if (ret)
			return ret;

		if (macro->idx <= SERDES1G_MAX)
			return FUNC3(macro->ctrl->regs, macro->idx);
		else if (macro->idx <= SERDES6G_MAX)
			return FUNC4(macro->ctrl->regs,
					       macro->idx - (SERDES1G_MAX + 1),
					       ocelot_serdes_muxes[i].submode);

		/* PCIe not supported yet */
		return -EOPNOTSUPP;
	}

	return -EINVAL;
}