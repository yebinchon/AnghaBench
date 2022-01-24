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
struct report_lun_header {int dummy; } ;
typedef  struct report_lun_header u8 ;
struct report_phys_lun_extended {int dummy; } ;
struct report_log_lun_extended_entry {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  list_length; } ;
struct report_log_lun_extended {TYPE_2__ header; } ;
struct pqi_ctrl_info {TYPE_1__* pci_dev; } ;
typedef  int /*<<< orphan*/  report_lun_header ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct report_log_lun_extended*) ; 
 struct report_log_lun_extended* FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct report_log_lun_extended*,struct report_log_lun_extended*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct report_lun_header*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct pqi_ctrl_info*,void**) ; 
 int FUNC7 (struct pqi_ctrl_info*,void**) ; 
 int /*<<< orphan*/  FUNC8 (size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct pqi_ctrl_info *ctrl_info,
	struct report_phys_lun_extended **physdev_list,
	struct report_log_lun_extended **logdev_list)
{
	int rc;
	size_t logdev_list_length;
	size_t logdev_data_length;
	struct report_log_lun_extended *internal_logdev_list;
	struct report_log_lun_extended *logdev_data;
	struct report_lun_header report_lun_header;

	rc = FUNC7(ctrl_info, (void **)physdev_list);
	if (rc)
		FUNC0(&ctrl_info->pci_dev->dev,
			"report physical LUNs failed\n");

	rc = FUNC6(ctrl_info, (void **)logdev_list);
	if (rc)
		FUNC0(&ctrl_info->pci_dev->dev,
			"report logical LUNs failed\n");

	/*
	 * Tack the controller itself onto the end of the logical device list.
	 */

	logdev_data = *logdev_list;

	if (logdev_data) {
		logdev_list_length =
			FUNC1(&logdev_data->header.list_length);
	} else {
		FUNC5(&report_lun_header, 0, sizeof(report_lun_header));
		logdev_data =
			(struct report_log_lun_extended *)&report_lun_header;
		logdev_list_length = 0;
	}

	logdev_data_length = sizeof(struct report_lun_header) +
		logdev_list_length;

	internal_logdev_list = FUNC3(logdev_data_length +
		sizeof(struct report_log_lun_extended), GFP_KERNEL);
	if (!internal_logdev_list) {
		FUNC2(*logdev_list);
		*logdev_list = NULL;
		return -ENOMEM;
	}

	FUNC4(internal_logdev_list, logdev_data, logdev_data_length);
	FUNC5((u8 *)internal_logdev_list + logdev_data_length, 0,
		sizeof(struct report_log_lun_extended_entry));
	FUNC8(logdev_list_length +
		sizeof(struct report_log_lun_extended_entry),
		&internal_logdev_list->header.list_length);

	FUNC2(*logdev_list);
	*logdev_list = internal_logdev_list;

	return 0;
}