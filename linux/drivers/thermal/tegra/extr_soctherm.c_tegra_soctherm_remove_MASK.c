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
struct tegra_soctherm {int /*<<< orphan*/  debugfs_dir; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tegra_soctherm* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct tegra_soctherm *tegra = FUNC1(pdev);

	FUNC0(tegra->debugfs_dir);

	FUNC2(pdev, false);

	return 0;
}