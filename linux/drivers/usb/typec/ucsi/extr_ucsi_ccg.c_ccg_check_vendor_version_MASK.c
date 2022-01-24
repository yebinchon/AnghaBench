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
struct version_format {int /*<<< orphan*/  build; } ;
struct ucsi_ccg {scalar_t__ fw_build; struct device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  build; } ;
struct fw_config_table {TYPE_1__ app; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct ucsi_ccg *uc,
				     struct version_format *app,
				     struct fw_config_table *fw_cfg)
{
	struct device *dev = uc->dev;

	/* Check if the fw build is for supported vendors */
	if (FUNC1(app->build) != uc->fw_build) {
		FUNC0(dev, "current fw is not from supported vendor\n");
		return false;
	}

	/* Check if the new fw build is for supported vendors */
	if (FUNC1(fw_cfg->app.build) != uc->fw_build) {
		FUNC0(dev, "new fw is not from supported vendor\n");
		return false;
	}
	return true;
}