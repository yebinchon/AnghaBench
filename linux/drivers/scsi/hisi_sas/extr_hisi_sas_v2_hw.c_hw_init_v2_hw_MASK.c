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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_hba*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct hisi_hba*) ; 

__attribute__((used)) static int FUNC4(struct hisi_hba *hisi_hba)
{
	struct device *dev = hisi_hba->dev;
	int rc;

	rc = FUNC3(hisi_hba);
	if (rc) {
		FUNC0(dev, "hisi_sas_reset_hw failed, rc=%d", rc);
		return rc;
	}

	FUNC2(100);
	FUNC1(hisi_hba);

	return 0;
}