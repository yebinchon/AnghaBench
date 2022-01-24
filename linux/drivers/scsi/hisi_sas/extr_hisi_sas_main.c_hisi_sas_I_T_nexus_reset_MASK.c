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
struct hisi_hba {struct device* dev; } ;
struct domain_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  HISI_SAS_INT_ABT_DEV ; 
 int TMF_RESP_FUNC_COMPLETE ; 
 int TMF_RESP_FUNC_FAILED ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 scalar_t__ FUNC1 (struct domain_device*) ; 
 struct hisi_hba* FUNC2 (struct domain_device*) ; 
 int FUNC3 (struct domain_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hisi_hba*,struct domain_device*) ; 
 int FUNC5 (struct hisi_hba*,struct domain_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hisi_hba*,struct domain_device*) ; 
 int FUNC7 (struct domain_device*) ; 

__attribute__((used)) static int FUNC8(struct domain_device *device)
{
	struct hisi_hba *hisi_hba = FUNC2(device);
	struct device *dev = hisi_hba->dev;
	int rc;

	rc = FUNC5(hisi_hba, device,
					  HISI_SAS_INT_ABT_DEV, 0);
	if (rc < 0) {
		FUNC0(dev, "I_T nexus reset: internal abort (%d)\n", rc);
		return TMF_RESP_FUNC_FAILED;
	}
	FUNC4(hisi_hba, device);

	if (FUNC1(device)) {
		rc = FUNC7(device);
		if (rc == TMF_RESP_FUNC_FAILED)
			return TMF_RESP_FUNC_FAILED;
	}

	rc = FUNC3(device);

	if ((rc == TMF_RESP_FUNC_COMPLETE) || (rc == -ENODEV))
		FUNC6(hisi_hba, device);

	return rc;
}