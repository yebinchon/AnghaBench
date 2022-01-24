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
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct hisi_hba {int refclk_frequency_mhz; int /*<<< orphan*/  queue_count; int /*<<< orphan*/  n_phy; int /*<<< orphan*/  ctrl_clock_ena_reg; int /*<<< orphan*/  ctrl_reset_sts_reg; int /*<<< orphan*/  ctrl_reset_reg; struct clk* ctrl; int /*<<< orphan*/  sas_addr; struct platform_device* platform_dev; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  SAS_ADDR_SIZE ; 
 int FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 scalar_t__ FUNC4 (struct device*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk* FUNC6 (struct device*,int /*<<< orphan*/ *) ; 
 struct clk* FUNC7 (struct device_node*,char*) ; 

int FUNC8(struct hisi_hba *hisi_hba)
{
	struct device *dev = hisi_hba->dev;
	struct platform_device *pdev = hisi_hba->platform_dev;
	struct device_node *np = pdev ? pdev->dev.of_node : NULL;
	struct clk *refclk;

	if (FUNC5(dev, "sas-addr", hisi_hba->sas_addr,
					  SAS_ADDR_SIZE)) {
		FUNC3(dev, "could not get property sas-addr\n");
		return -ENOENT;
	}

	if (np) {
		/*
		 * These properties are only required for platform device-based
		 * controller with DT firmware.
		 */
		hisi_hba->ctrl = FUNC7(np,
					"hisilicon,sas-syscon");
		if (FUNC0(hisi_hba->ctrl)) {
			FUNC3(dev, "could not get syscon\n");
			return -ENOENT;
		}

		if (FUNC4(dev, "ctrl-reset-reg",
					     &hisi_hba->ctrl_reset_reg)) {
			FUNC3(dev, "could not get property ctrl-reset-reg\n");
			return -ENOENT;
		}

		if (FUNC4(dev, "ctrl-reset-sts-reg",
					     &hisi_hba->ctrl_reset_sts_reg)) {
			FUNC3(dev, "could not get property ctrl-reset-sts-reg\n");
			return -ENOENT;
		}

		if (FUNC4(dev, "ctrl-clock-ena-reg",
					     &hisi_hba->ctrl_clock_ena_reg)) {
			FUNC3(dev, "could not get property ctrl-clock-ena-reg\n");
			return -ENOENT;
		}
	}

	refclk = FUNC6(dev, NULL);
	if (FUNC0(refclk))
		FUNC2(dev, "no ref clk property\n");
	else
		hisi_hba->refclk_frequency_mhz = FUNC1(refclk) / 1000000;

	if (FUNC4(dev, "phy-count", &hisi_hba->n_phy)) {
		FUNC3(dev, "could not get property phy-count\n");
		return -ENOENT;
	}

	if (FUNC4(dev, "queue-count",
				     &hisi_hba->queue_count)) {
		FUNC3(dev, "could not get property queue-count\n");
		return -ENOENT;
	}

	return 0;
}