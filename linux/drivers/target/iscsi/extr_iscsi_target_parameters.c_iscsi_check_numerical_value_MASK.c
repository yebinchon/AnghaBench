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
struct iscsi_param {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct iscsi_param*) ; 
 scalar_t__ FUNC1 (struct iscsi_param*) ; 
 scalar_t__ FUNC2 (struct iscsi_param*) ; 
 scalar_t__ FUNC3 (struct iscsi_param*) ; 
 scalar_t__ FUNC4 (struct iscsi_param*) ; 
 scalar_t__ FUNC5 (struct iscsi_param*) ; 
 scalar_t__ FUNC6 (struct iscsi_param*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct iscsi_param *param, char *value_ptr)
{
	char *tmpptr;
	int value = 0;

	value = FUNC8(value_ptr, &tmpptr, 0);

	if (FUNC0(param)) {
		if ((value < 0) || (value > 2)) {
			FUNC7("Illegal value for \"%s\", must be"
				" between 0 and 2.\n", param->name);
			return -1;
		}
		return 0;
	}
	if (FUNC2(param)) {
		if ((value < 0) || (value > 3600)) {
			FUNC7("Illegal value for \"%s\", must be"
				" between 0 and 3600.\n", param->name);
			return -1;
		}
		return 0;
	}
	if (FUNC1(param)) {
		if ((value < 0) || (value > 32767)) {
			FUNC7("Illegal value for \"%s\", must be"
				" between 0 and 32767.\n", param->name);
			return -1;
		}
		return 0;
	}
	if (FUNC3(param)) {
		if ((value < 0) || (value > 65535)) {
			FUNC7("Illegal value for \"%s\", must be"
				" between 0 and 65535.\n", param->name);
			return -1;
		}
		return 0;
	}
	if (FUNC4(param)) {
		if ((value < 1) || (value > 65535)) {
			FUNC7("Illegal value for \"%s\", must be"
				" between 1 and 65535.\n", param->name);
			return -1;
		}
		return 0;
	}
	if (FUNC5(param)) {
		if ((value < 2) || (value > 3600)) {
			FUNC7("Illegal value for \"%s\", must be"
				" between 2 and 3600.\n", param->name);
			return -1;
		}
		return 0;
	}
	if (FUNC6(param)) {
		if ((value < 512) || (value > 16777215)) {
			FUNC7("Illegal value for \"%s\", must be"
				" between 512 and 16777215.\n", param->name);
			return -1;
		}
		return 0;
	}

	return 0;
}