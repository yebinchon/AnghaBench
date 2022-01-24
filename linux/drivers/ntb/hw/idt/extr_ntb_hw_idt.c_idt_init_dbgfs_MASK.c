#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* pdev; } ;
struct idt_ntb_dev {TYPE_1__ ntb; int /*<<< orphan*/  dbgfs_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dbgfs_topdir ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,struct idt_ntb_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  idt_dbgfs_info_ops ; 
 char* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC8(struct idt_ntb_dev *ndev)
{
	char devname[64];

	/* If the top directory is not created then do nothing */
	if (FUNC1(dbgfs_topdir)) {
		FUNC5(&ndev->ntb.pdev->dev, "Top DebugFS directory absent");
		return FUNC2(dbgfs_topdir);
	}

	/* Create the info file node */
	FUNC7(devname, 64, "info:%s", FUNC6(ndev->ntb.pdev));
	ndev->dbgfs_info = FUNC3(devname, 0400, dbgfs_topdir,
		ndev, &idt_dbgfs_info_ops);
	if (FUNC0(ndev->dbgfs_info)) {
		FUNC4(&ndev->ntb.pdev->dev, "Failed to create DebugFS node");
		return FUNC2(ndev->dbgfs_info);
	}

	FUNC4(&ndev->ntb.pdev->dev, "NTB device DebugFS node created");

	return 0;
}