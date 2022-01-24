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
struct pci_dev {int dummy; } ;
struct isst_if_mbox_cmd {int /*<<< orphan*/  req_data; int /*<<< orphan*/  parameter; int /*<<< orphan*/  logical_cpu; int /*<<< orphan*/  sub_command; int /*<<< orphan*/  command; } ;
struct isst_if_device {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 long EINVAL ; 
 long EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC2 (struct pci_dev*,struct isst_if_mbox_cmd*) ; 
 scalar_t__ FUNC3 (struct isst_if_mbox_cmd*) ; 
 scalar_t__ FUNC4 (struct isst_if_mbox_cmd*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct isst_if_device* FUNC8 (struct pci_dev*) ; 

__attribute__((used)) static long FUNC9(u8 *cmd_ptr, int *write_only, int resume)
{
	struct isst_if_mbox_cmd *mbox_cmd;
	struct isst_if_device *punit_dev;
	struct pci_dev *pdev;
	int ret;

	mbox_cmd = (struct isst_if_mbox_cmd *)cmd_ptr;

	if (FUNC3(mbox_cmd))
		return -EINVAL;

	if (FUNC4(mbox_cmd) && !FUNC0(CAP_SYS_ADMIN))
		return -EPERM;

	pdev = FUNC1(mbox_cmd->logical_cpu, 1, 30, 1);
	if (!pdev)
		return -EINVAL;

	punit_dev = FUNC8(pdev);
	if (!punit_dev)
		return -EINVAL;

	/*
	 * Basically we are allowing one complete mailbox transaction on
	 * a mapped PCI device at a time.
	 */
	FUNC6(&punit_dev->mutex);
	ret = FUNC2(pdev, mbox_cmd);
	if (!ret && !resume && FUNC4(mbox_cmd))
		ret = FUNC5(mbox_cmd->command,
				     mbox_cmd->sub_command,
				     mbox_cmd->logical_cpu, 1,
				     mbox_cmd->parameter,
				     mbox_cmd->req_data);
	FUNC7(&punit_dev->mutex);
	if (ret)
		return ret;

	*write_only = 0;

	return 0;
}