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
struct iscsi_param {int /*<<< orphan*/  value; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(struct iscsi_param *param, char *value)
{
	FUNC0(param->value);

	param->value = FUNC1(value, GFP_KERNEL);
	if (!param->value) {
		FUNC3("Unable to allocate memory for value.\n");
		return -ENOMEM;
	}

	FUNC2("iSCSI Parameter updated to %s=%s\n",
			param->name, param->value);
	return 0;
}