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
union phy_configure_opts {int /*<<< orphan*/  mipi_dphy; } ;
struct sun6i_dphy {int /*<<< orphan*/  config; } ;
struct phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,union phy_configure_opts*,int) ; 
 struct sun6i_dphy* FUNC1 (struct phy*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct phy *phy, union phy_configure_opts *opts)
{
	struct sun6i_dphy *dphy = FUNC1(phy);
	int ret;

	ret = FUNC2(&opts->mipi_dphy);
	if (ret)
		return ret;

	FUNC0(&dphy->config, opts, sizeof(dphy->config));

	return 0;
}