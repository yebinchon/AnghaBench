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
struct tegra_xusb {int /*<<< orphan*/  genpd_dev_host; int /*<<< orphan*/  genpd_dev_ss; scalar_t__ genpd_dl_host; scalar_t__ genpd_dl_ss; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct device *dev,
					  struct tegra_xusb *tegra)
{
	if (tegra->genpd_dl_ss)
		FUNC2(tegra->genpd_dl_ss);
	if (tegra->genpd_dl_host)
		FUNC2(tegra->genpd_dl_host);
	if (!FUNC0(tegra->genpd_dev_ss))
		FUNC1(tegra->genpd_dev_ss, true);
	if (!FUNC0(tegra->genpd_dev_host))
		FUNC1(tegra->genpd_dev_host, true);
}