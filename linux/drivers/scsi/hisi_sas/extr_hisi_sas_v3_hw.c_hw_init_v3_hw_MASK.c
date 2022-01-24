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
typedef  union acpi_object {int dummy; } acpi_object ;
struct hisi_hba {struct device* dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  guid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  DSM_FUNC_ERR_HANDLE_MSI ; 
 int EINVAL ; 
 union acpi_object* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (struct hisi_hba*) ; 

__attribute__((used)) static int FUNC9(struct hisi_hba *hisi_hba)
{
	struct device *dev = hisi_hba->dev;
	union acpi_object *obj;
	guid_t guid;
	int rc;

	rc = FUNC8(hisi_hba);
	if (rc) {
		FUNC3(dev, "hisi_sas_reset_hw failed, rc=%d", rc);
		return rc;
	}

	FUNC7(100);
	FUNC6(hisi_hba);

	if (FUNC5("D5918B4B-37AE-4E10-A99F-E5E8A6EF4C1F", &guid)) {
		FUNC3(dev, "Parse GUID failed\n");
		return -EINVAL;
	}

	/* Switch over to MSI handling , from PCI AER default */
	obj = FUNC2(FUNC1(dev), &guid, 0,
				DSM_FUNC_ERR_HANDLE_MSI, NULL);
	if (!obj)
		FUNC4(dev, "Switch over to MSI handling failed\n");
	else
		FUNC0(obj);

	return 0;
}