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
struct property {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hdmi_phy_data {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct hdmi_phy_data*,int const*) ; 
 struct property* FUNC4 (struct device_node*,char*,int*) ; 
 int FUNC5 (struct device_node*,char*,int*,int) ; 

int FUNC6(struct platform_device *pdev, struct device_node *ep,
	struct hdmi_phy_data *phy)
{
	struct property *prop;
	int r, len;

	prop = FUNC4(ep, "lanes", &len);
	if (prop) {
		u32 lanes[8];

		if (len / sizeof(u32) != FUNC0(lanes)) {
			FUNC2(&pdev->dev, "bad number of lanes\n");
			return -EINVAL;
		}

		r = FUNC5(ep, "lanes", lanes,
			FUNC0(lanes));
		if (r) {
			FUNC2(&pdev->dev, "failed to read lane data\n");
			return r;
		}

		r = FUNC3(phy, lanes);
		if (r) {
			FUNC2(&pdev->dev, "failed to parse lane data\n");
			return r;
		}
	} else {
		static const u32 default_lanes[] = { 0, 1, 2, 3, 4, 5, 6, 7 };

		r = FUNC3(phy, default_lanes);
		if (FUNC1(r)) {
			FUNC2(&pdev->dev, "failed to parse lane data\n");
			return r;
		}
	}

	return 0;
}