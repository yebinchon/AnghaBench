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
struct phy {int dummy; } ;
struct of_phandle_args {size_t* args; } ;
struct exynos_mipi_video_phy {size_t num_phys; TYPE_1__* phys; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct phy* phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 struct phy* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 struct exynos_mipi_video_phy* FUNC2 (struct device*) ; 

__attribute__((used)) static struct phy *FUNC3(struct device *dev,
					struct of_phandle_args *args)
{
	struct exynos_mipi_video_phy *state = FUNC2(dev);

	if (FUNC1(args->args[0] >= state->num_phys))
		return FUNC0(-ENODEV);

	return state->phys[args->args[0]].phy;
}