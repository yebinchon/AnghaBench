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
struct tegra_xusb {void* genpd_dl_ss; void* genpd_dev_ss; void* genpd_dl_host; void* genpd_dev_host; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int DL_FLAG_PM_RUNTIME ; 
 int DL_FLAG_STATELESS ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 void* FUNC3 (struct device*,char*) ; 
 void* FUNC4 (struct device*,void*,int) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
				       struct tegra_xusb *tegra)
{
	int err;

	tegra->genpd_dev_host = FUNC3(dev, "xusb_host");
	if (FUNC0(tegra->genpd_dev_host)) {
		err = FUNC1(tegra->genpd_dev_host);
		FUNC2(dev, "failed to get host pm-domain: %d\n", err);
		return err;
	}

	tegra->genpd_dev_ss = FUNC3(dev, "xusb_ss");
	if (FUNC0(tegra->genpd_dev_ss)) {
		err = FUNC1(tegra->genpd_dev_ss);
		FUNC2(dev, "failed to get superspeed pm-domain: %d\n", err);
		return err;
	}

	tegra->genpd_dl_host = FUNC4(dev, tegra->genpd_dev_host,
					       DL_FLAG_PM_RUNTIME |
					       DL_FLAG_STATELESS);
	if (!tegra->genpd_dl_host) {
		FUNC2(dev, "adding host device link failed!\n");
		return -ENODEV;
	}

	tegra->genpd_dl_ss = FUNC4(dev, tegra->genpd_dev_ss,
					     DL_FLAG_PM_RUNTIME |
					     DL_FLAG_STATELESS);
	if (!tegra->genpd_dl_ss) {
		FUNC2(dev, "adding superspeed device link failed!\n");
		return -ENODEV;
	}

	return 0;
}