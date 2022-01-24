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
typedef  int /*<<< orphan*/  u8 ;
struct hisi_sas_tmf_task {int /*<<< orphan*/  tmf; } ;
struct hisi_hba {struct device* dev; } ;
struct domain_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HISI_SAS_INT_ABT_DEV ; 
 int /*<<< orphan*/  TMF_ABORT_TASK_SET ; 
 int TMF_RESP_FUNC_COMPLETE ; 
 int TMF_RESP_FUNC_FAILED ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct hisi_hba* FUNC1 (struct domain_device*) ; 
 int FUNC2 (struct domain_device*,int /*<<< orphan*/ *,struct hisi_sas_tmf_task*) ; 
 int /*<<< orphan*/  FUNC3 (struct hisi_hba*,struct domain_device*) ; 
 int FUNC4 (struct hisi_hba*,struct domain_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hisi_hba*,struct domain_device*) ; 

__attribute__((used)) static int FUNC6(struct domain_device *device, u8 *lun)
{
	struct hisi_hba *hisi_hba = FUNC1(device);
	struct device *dev = hisi_hba->dev;
	struct hisi_sas_tmf_task tmf_task;
	int rc;

	rc = FUNC4(hisi_hba, device,
					  HISI_SAS_INT_ABT_DEV, 0);
	if (rc < 0) {
		FUNC0(dev, "abort task set: internal abort rc=%d\n", rc);
		return TMF_RESP_FUNC_FAILED;
	}
	FUNC3(hisi_hba, device);

	tmf_task.tmf = TMF_ABORT_TASK_SET;
	rc = FUNC2(device, lun, &tmf_task);

	if (rc == TMF_RESP_FUNC_COMPLETE)
		FUNC5(hisi_hba, device);

	return rc;
}