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
struct wd719x_host_param {int dummy; } ;
struct wd719x {int fw_size; TYPE_1__* pdev; int /*<<< orphan*/ * params; int /*<<< orphan*/  params_phys; int /*<<< orphan*/ * hash_virt; int /*<<< orphan*/  hash_phys; int /*<<< orphan*/ * fw_virt; int /*<<< orphan*/  fw_phys; int /*<<< orphan*/  active_scbs; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WD719X_CMD_SLEEP ; 
 int WD719X_HASH_TABLE_SIZE ; 
 int /*<<< orphan*/  WD719X_PCI_MODE_SELECT ; 
 int /*<<< orphan*/  WD719X_WAIT_FOR_RISC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct wd719x*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct wd719x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wd719x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct wd719x *wd)
{
	/* stop the RISC */
	if (FUNC5(wd, WD719X_CMD_SLEEP, 0, 0, 0, 0,
			      WD719X_WAIT_FOR_RISC))
		FUNC1(&wd->pdev->dev, "RISC sleep command failed\n");
	/* disable RISC */
	FUNC6(wd, WD719X_PCI_MODE_SELECT, 0);

	FUNC0(!FUNC4(&wd->active_scbs));

	/* free internal buffers */
	FUNC2(&wd->pdev->dev, wd->fw_size, wd->fw_virt,
			  wd->fw_phys);
	wd->fw_virt = NULL;
	FUNC2(&wd->pdev->dev, WD719X_HASH_TABLE_SIZE, wd->hash_virt,
			  wd->hash_phys);
	wd->hash_virt = NULL;
	FUNC2(&wd->pdev->dev, sizeof(struct wd719x_host_param),
			  wd->params, wd->params_phys);
	wd->params = NULL;
	FUNC3(wd->pdev->irq, wd);
}