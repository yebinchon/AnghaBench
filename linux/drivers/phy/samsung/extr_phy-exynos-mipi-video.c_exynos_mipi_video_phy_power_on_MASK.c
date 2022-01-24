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
struct video_phy_desc {int /*<<< orphan*/  data; } ;
struct phy {int dummy; } ;
struct exynos_mipi_video_phy {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct exynos_mipi_video_phy*,int) ; 
 struct video_phy_desc* FUNC1 (struct phy*) ; 
 struct exynos_mipi_video_phy* FUNC2 (struct video_phy_desc*) ; 

__attribute__((used)) static int FUNC3(struct phy *phy)
{
	struct video_phy_desc *phy_desc = FUNC1(phy);
	struct exynos_mipi_video_phy *state = FUNC2(phy_desc);

	return FUNC0(phy_desc->data, state, 1);
}