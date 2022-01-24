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
struct tegra_powergate {int /*<<< orphan*/  reset; TYPE_1__* pmc; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct tegra_powergate *pg,
					 struct device_node *np, bool off)
{
	struct device *dev = pg->pmc->dev;
	int err;

	pg->reset = FUNC3(np);
	if (FUNC0(pg->reset)) {
		err = FUNC1(pg->reset);
		FUNC2(dev, "failed to get device resets: %d\n", err);
		return err;
	}

	err = FUNC5(pg->reset);
	if (err < 0) {
		FUNC4("failed to acquire resets: %d\n", err);
		goto out;
	}

	if (off) {
		err = FUNC6(pg->reset);
	} else {
		err = FUNC7(pg->reset);
		if (err < 0)
			goto out;

		FUNC9(pg->reset);
	}

out:
	if (err) {
		FUNC9(pg->reset);
		FUNC8(pg->reset);
	}

	return err;
}