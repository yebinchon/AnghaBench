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
struct pqi_ctrl_info {int controller_online; int pqi_mode_enabled; int /*<<< orphan*/  ctrl_offline_work; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  pqi_disable_ctrl_shutdown ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pqi_ctrl_info*) ; 

__attribute__((used)) static void FUNC5(struct pqi_ctrl_info *ctrl_info)
{
	if (!ctrl_info->controller_online)
		return;

	ctrl_info->controller_online = false;
	ctrl_info->pqi_mode_enabled = false;
	FUNC2(ctrl_info);
	if (!pqi_disable_ctrl_shutdown)
		FUNC4(ctrl_info);
	FUNC1(ctrl_info->pci_dev);
	FUNC0(&ctrl_info->pci_dev->dev, "controller offline\n");
	FUNC3(&ctrl_info->ctrl_offline_work);
}