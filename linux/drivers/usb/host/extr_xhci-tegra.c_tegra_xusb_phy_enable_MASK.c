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
struct tegra_xusb {unsigned int num_phys; int /*<<< orphan*/ * phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct tegra_xusb *tegra)
{
	unsigned int i;
	int err;

	for (i = 0; i < tegra->num_phys; i++) {
		err = FUNC1(tegra->phys[i]);
		if (err)
			goto disable_phy;

		err = FUNC3(tegra->phys[i]);
		if (err) {
			FUNC0(tegra->phys[i]);
			goto disable_phy;
		}
	}

	return 0;

disable_phy:
	while (i--) {
		FUNC2(tegra->phys[i]);
		FUNC0(tegra->phys[i]);
	}

	return err;
}