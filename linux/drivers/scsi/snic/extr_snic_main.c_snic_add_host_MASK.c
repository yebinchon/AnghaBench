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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct Scsi_Host {int host_no; int /*<<< orphan*/ * work_q; int /*<<< orphan*/  work_q_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*,char*,...) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct Scsi_Host*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*,int) ; 

__attribute__((used)) static int
FUNC5(struct Scsi_Host *shost, struct pci_dev *pdev)
{
	int ret = 0;

	ret = FUNC3(shost, &pdev->dev);
	if (ret) {
		FUNC1(shost,
			      "snic: scsi_add_host failed. %d\n",
			      ret);

		return ret;
	}

	FUNC0(shost->work_q != NULL);
	FUNC4(shost->work_q_name, sizeof(shost->work_q_name), "scsi_wq_%d",
		 shost->host_no);
	shost->work_q = FUNC2(shost->work_q_name);
	if (!shost->work_q) {
		FUNC1(shost, "Failed to Create ScsiHost wq.\n");

		ret = -ENOMEM;
	}

	return ret;
}