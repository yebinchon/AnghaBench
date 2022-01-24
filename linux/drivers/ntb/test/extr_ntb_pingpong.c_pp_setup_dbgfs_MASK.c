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
struct pp_ctx {TYPE_1__* ntb; int /*<<< orphan*/  count; int /*<<< orphan*/  dbgfs_dir; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; struct pci_dev* pdev; } ;

/* Variables and functions */
 void* FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  pp_dbgfs_topdir ; 

__attribute__((used)) static void FUNC4(struct pp_ctx *pp)
{
	struct pci_dev *pdev = pp->ntb->pdev;
	void *ret;

	pp->dbgfs_dir = FUNC1(FUNC3(pdev), pp_dbgfs_topdir);

	ret = FUNC0("count", 0600, pp->dbgfs_dir, &pp->count);
	if (!ret)
		FUNC2(&pp->ntb->dev, "DebugFS unsupported\n");
}