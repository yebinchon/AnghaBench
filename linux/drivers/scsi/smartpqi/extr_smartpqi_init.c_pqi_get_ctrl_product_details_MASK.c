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
struct pqi_ctrl_info {char* firmware_version; char* model; char* vendor; } ;
struct bmic_identify_controller {int /*<<< orphan*/  vendor_id; int /*<<< orphan*/  product_id; int /*<<< orphan*/  firmware_build_number; int /*<<< orphan*/  firmware_version; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bmic_identify_controller*) ; 
 struct bmic_identify_controller* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct pqi_ctrl_info*,struct bmic_identify_controller*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct pqi_ctrl_info *ctrl_info)
{
	int rc;
	struct bmic_identify_controller *identify;

	identify = FUNC2(sizeof(*identify), GFP_KERNEL);
	if (!identify)
		return -ENOMEM;

	rc = FUNC4(ctrl_info, identify);
	if (rc)
		goto out;

	FUNC3(ctrl_info->firmware_version, identify->firmware_version,
		sizeof(identify->firmware_version));
	ctrl_info->firmware_version[sizeof(identify->firmware_version)] = '\0';
	FUNC5(ctrl_info->firmware_version +
		FUNC6(ctrl_info->firmware_version),
		sizeof(ctrl_info->firmware_version),
		"-%u", FUNC0(&identify->firmware_build_number));

	FUNC3(ctrl_info->model, identify->product_id,
		sizeof(identify->product_id));
	ctrl_info->model[sizeof(identify->product_id)] = '\0';

	FUNC3(ctrl_info->vendor, identify->vendor_id,
		sizeof(identify->vendor_id));
	ctrl_info->vendor[sizeof(identify->vendor_id)] = '\0';

out:
	FUNC1(identify);

	return rc;
}