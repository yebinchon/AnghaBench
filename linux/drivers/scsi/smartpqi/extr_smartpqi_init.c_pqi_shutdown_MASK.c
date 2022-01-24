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
struct pqi_ctrl_info {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct pqi_ctrl_info* FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pqi_ctrl_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct pqi_ctrl_info*) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pci_dev)
{
	int rc;
	struct pqi_ctrl_info *ctrl_info;

	ctrl_info = FUNC1(pci_dev);
	if (!ctrl_info)
		goto error;

	/*
	 * Write all data in the controller's battery-backed cache to
	 * storage.
	 */
	rc = FUNC2(ctrl_info, SHUTDOWN);
	FUNC3(ctrl_info);
	FUNC4(ctrl_info);
	if (rc == 0)
		return;

error:
	FUNC0(&pci_dev->dev,
		"unable to flush controller cache\n");
}