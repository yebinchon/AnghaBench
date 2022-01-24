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
struct tegra_bpmp_thermal {int /*<<< orphan*/  bpmp; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MRQ_THERMAL ; 
 struct tegra_bpmp_thermal* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tegra_bpmp_thermal*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct tegra_bpmp_thermal *tegra = FUNC0(pdev);

	FUNC1(tegra->bpmp, MRQ_THERMAL, tegra);

	return 0;
}