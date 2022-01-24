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
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct tegra_usb_phy {int /*<<< orphan*/  pll_u; scalar_t__ is_ulpi_phy; TYPE_1__ u_phy; int /*<<< orphan*/  vbus; TYPE_2__* freq; } ;
struct TYPE_5__ {unsigned long freq; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__* tegra_freq_table ; 
 int FUNC10 (struct tegra_usb_phy*) ; 
 int FUNC11 (struct tegra_usb_phy*) ; 

__attribute__((used)) static int FUNC12(struct tegra_usb_phy *phy)
{
	unsigned long parent_rate;
	int i;
	int err;

	phy->pll_u = FUNC8(phy->u_phy.dev, "pll_u");
	if (FUNC1(phy->pll_u)) {
		err = FUNC2(phy->pll_u);
		FUNC7(phy->u_phy.dev,
			"Failed to get pll_u clock: %d\n", err);
		return err;
	}

	err = FUNC6(phy->pll_u);
	if (err)
		return err;

	parent_rate = FUNC5(FUNC4(phy->pll_u));
	for (i = 0; i < FUNC0(tegra_freq_table); i++) {
		if (tegra_freq_table[i].freq == parent_rate) {
			phy->freq = &tegra_freq_table[i];
			break;
		}
	}
	if (!phy->freq) {
		FUNC7(phy->u_phy.dev, "Invalid pll_u parent rate %ld\n",
			parent_rate);
		err = -EINVAL;
		goto fail;
	}

	if (!FUNC1(phy->vbus)) {
		err = FUNC9(phy->vbus);
		if (err) {
			FUNC7(phy->u_phy.dev,
				"Failed to enable USB VBUS regulator: %d\n",
				err);
			goto fail;
		}
	}

	if (phy->is_ulpi_phy)
		err = FUNC10(phy);
	else
		err = FUNC11(phy);
	if (err < 0)
		goto fail;

	return 0;

fail:
	FUNC3(phy->pll_u);
	return err;
}