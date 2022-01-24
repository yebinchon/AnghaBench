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
typedef  int u8 ;
struct pqi_ctrl_info {TYPE_1__* pci_dev; } ;
typedef  enum pqi_soft_reset_status { ____Placeholder_pqi_soft_reset_status } pqi_soft_reset_status ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned long PQI_HZ ; 
 int PQI_SOFT_RESET_ABORT ; 
 int PQI_SOFT_RESET_INITIATE ; 
 int /*<<< orphan*/  PQI_SOFT_RESET_STATUS_POLL_INTERVAL_SECS ; 
 unsigned long PQI_SOFT_RESET_STATUS_TIMEOUT_SECS ; 
 int RESET_ABORT ; 
 int RESET_INITIATE_DRIVER ; 
 int RESET_NORESPONSE ; 
 int RESET_TIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 unsigned long jiffies ; 
 int FUNC1 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static enum pqi_soft_reset_status FUNC5(
	struct pqi_ctrl_info *ctrl_info)
{
	unsigned long timeout;
	u8 status;

	timeout = (PQI_SOFT_RESET_STATUS_TIMEOUT_SECS * PQI_HZ) + jiffies;

	while (1) {
		status = FUNC1(ctrl_info);
		if (status & PQI_SOFT_RESET_INITIATE)
			return RESET_INITIATE_DRIVER;

		if (status & PQI_SOFT_RESET_ABORT)
			return RESET_ABORT;

		if (FUNC4(jiffies, timeout)) {
			FUNC0(&ctrl_info->pci_dev->dev,
				"timed out waiting for soft reset status\n");
			return RESET_TIMEDOUT;
		}

		if (!FUNC2(ctrl_info))
			return RESET_NORESPONSE;

		FUNC3(PQI_SOFT_RESET_STATUS_POLL_INTERVAL_SECS);
	}
}