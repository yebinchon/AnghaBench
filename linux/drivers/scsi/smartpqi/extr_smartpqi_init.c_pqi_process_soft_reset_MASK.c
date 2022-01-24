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
struct pqi_ctrl_info {int /*<<< orphan*/  ctrl_id; TYPE_1__* pci_dev; } ;
typedef  enum pqi_soft_reset_status { ____Placeholder_pqi_soft_reset_status } pqi_soft_reset_status ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  RESET_ABORT 132 
#define  RESET_INITIATE_DRIVER 131 
#define  RESET_INITIATE_FIRMWARE 130 
#define  RESET_NORESPONSE 129 
#define  RESET_TIMEDOUT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC1 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct pqi_ctrl_info*) ; 

__attribute__((used)) static void FUNC6(struct pqi_ctrl_info *ctrl_info,
		enum pqi_soft_reset_status reset_status)
{
	int rc;

	switch (reset_status) {
	case RESET_INITIATE_DRIVER:
		/* fall through */
	case RESET_TIMEDOUT:
		FUNC0(&ctrl_info->pci_dev->dev,
			"resetting controller %u\n", ctrl_info->ctrl_id);
		FUNC5(ctrl_info);
		/* fall through */
	case RESET_INITIATE_FIRMWARE:
		rc = FUNC1(ctrl_info);
		FUNC3(ctrl_info);
		FUNC0(&ctrl_info->pci_dev->dev,
			"Online Firmware Activation for controller %u: %s\n",
			ctrl_info->ctrl_id, rc == 0 ? "SUCCESS" : "FAILED");
		break;
	case RESET_ABORT:
		FUNC2(ctrl_info);
		FUNC0(&ctrl_info->pci_dev->dev,
			"Online Firmware Activation for controller %u: %s\n",
			ctrl_info->ctrl_id, "ABORTED");
		break;
	case RESET_NORESPONSE:
		FUNC3(ctrl_info);
		FUNC4(ctrl_info);
		break;
	}
}