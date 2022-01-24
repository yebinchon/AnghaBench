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
struct omap_usb {int /*<<< orphan*/  wkupclk; int /*<<< orphan*/  dev; int /*<<< orphan*/  optclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC4(struct omap_usb *phy)
{
	int ret;

	ret = FUNC2(phy->wkupclk);
	if (ret < 0) {
		FUNC3(phy->dev, "Failed to enable wkupclk %d\n", ret);
		goto err0;
	}

	if (!FUNC0(phy->optclk)) {
		ret = FUNC2(phy->optclk);
		if (ret < 0) {
			FUNC3(phy->dev, "Failed to enable optclk %d\n", ret);
			goto err1;
		}
	}

	return 0;

err1:
	FUNC1(phy->wkupclk);

err0:
	return ret;
}