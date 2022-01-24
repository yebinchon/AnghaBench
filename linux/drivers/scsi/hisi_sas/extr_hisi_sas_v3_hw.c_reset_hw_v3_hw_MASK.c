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
typedef  int /*<<< orphan*/  u32 ;
struct hisi_hba {struct device* dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  AXI_CFG ; 
 int /*<<< orphan*/  DLVRY_QUEUE_ENABLE ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct hisi_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct hisi_hba *hisi_hba)
{
	struct device *dev = hisi_hba->dev;
	int ret;
	u32 val;

	FUNC6(hisi_hba, DLVRY_QUEUE_ENABLE, 0);

	/* Disable all of the PHYs */
	FUNC5(hisi_hba);
	FUNC7(50);

	/* Ensure axi bus idle */
	ret = FUNC4(AXI_CFG, val, !val,
					   20000, 1000000);
	if (ret) {
		FUNC3(dev, "axi bus is not idle, ret = %d!\n", ret);
		return -EIO;
	}

	if (FUNC1(dev)) {
		acpi_status s;

		s = FUNC2(FUNC1(dev), "_RST", NULL, NULL);
		if (FUNC0(s)) {
			FUNC3(dev, "Reset failed\n");
			return -EIO;
		}
	} else {
		FUNC3(dev, "no reset method!\n");
		return -EINVAL;
	}

	return 0;
}