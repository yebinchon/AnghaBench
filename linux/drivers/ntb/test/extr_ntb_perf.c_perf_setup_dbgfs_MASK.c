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
struct perf_ctx {int /*<<< orphan*/  dbgfs_dir; TYPE_1__* ntb; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  chunk_order ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,struct perf_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  perf_dbgfs_info ; 
 int /*<<< orphan*/  perf_dbgfs_run ; 
 int /*<<< orphan*/  perf_dbgfs_tcnt ; 
 int /*<<< orphan*/  perf_dbgfs_topdir ; 
 int /*<<< orphan*/  total_order ; 
 int /*<<< orphan*/  use_dma ; 

__attribute__((used)) static void FUNC6(struct perf_ctx *perf)
{
	struct pci_dev *pdev = perf->ntb->pdev;

	perf->dbgfs_dir = FUNC1(FUNC5(pdev), perf_dbgfs_topdir);
	if (!perf->dbgfs_dir) {
		FUNC4(&perf->ntb->dev, "DebugFS unsupported\n");
		return;
	}

	FUNC2("info", 0600, perf->dbgfs_dir, perf,
			    &perf_dbgfs_info);

	FUNC2("run", 0600, perf->dbgfs_dir, perf,
			    &perf_dbgfs_run);

	FUNC2("threads_count", 0600, perf->dbgfs_dir, perf,
			    &perf_dbgfs_tcnt);

	/* They are made read-only for test exec safety and integrity */
	FUNC3("chunk_order", 0500, perf->dbgfs_dir, &chunk_order);

	FUNC3("total_order", 0500, perf->dbgfs_dir, &total_order);

	FUNC0("use_dma", 0500, perf->dbgfs_dir, &use_dma);
}