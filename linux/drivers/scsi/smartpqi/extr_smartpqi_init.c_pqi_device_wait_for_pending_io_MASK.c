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
struct pqi_scsi_dev {int /*<<< orphan*/  scsi_cmds_outstanding; } ;
struct pqi_ctrl_info {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENXIO ; 
 int ETIMEDOUT ; 
 unsigned long NO_TIMEOUT ; 
 unsigned long PQI_HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct pqi_ctrl_info*) ; 
 scalar_t__ FUNC3 (struct pqi_ctrl_info*) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct pqi_ctrl_info *ctrl_info,
	struct pqi_scsi_dev *device, unsigned long timeout_secs)
{
	unsigned long timeout;

	timeout = (timeout_secs * PQI_HZ) + jiffies;

	while (FUNC0(&device->scsi_cmds_outstanding)) {
		FUNC2(ctrl_info);
		if (FUNC3(ctrl_info))
			return -ENXIO;
		if (timeout_secs != NO_TIMEOUT) {
			if (FUNC4(jiffies, timeout)) {
				FUNC1(&ctrl_info->pci_dev->dev,
					"timed out waiting for pending IO\n");
				return -ETIMEDOUT;
			}
		}
		FUNC5(1000, 2000);
	}

	return 0;
}