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
struct scsi_dev_info_list {int /*<<< orphan*/  dev_info_list; } ;
typedef  enum scsi_devinfo_key { ____Placeholder_scsi_devinfo_key } scsi_devinfo_key ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct scsi_dev_info_list*) ; 
 int FUNC1 (struct scsi_dev_info_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_dev_info_list*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct scsi_dev_info_list* FUNC4 (char*,char*,int) ; 

int FUNC5(char *vendor, char *model,
				 enum scsi_devinfo_key key)
{
	struct scsi_dev_info_list *found;

	found = FUNC4(vendor, model, key);
	if (FUNC0(found))
		return FUNC1(found);

	FUNC3(&found->dev_info_list);
	FUNC2(found);
	return 0;
}