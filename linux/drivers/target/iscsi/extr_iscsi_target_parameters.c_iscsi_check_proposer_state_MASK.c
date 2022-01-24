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
 char* FUNC2 (struct iscsi_param*,char*) ; 
 scalar_t__ FUNC3 (struct iscsi_param*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*,char) ; 

__attribute__((used)) static int FUNC6(struct iscsi_param *param, char *value)
{
	if (FUNC0(param)) {
		FUNC4("Received key \"%s\" twice, protocol error.\n",
				param->name);
		return -1;
	}

	if (FUNC1(param)) {
		char *comma_ptr = NULL, *tmp_ptr = NULL;

		comma_ptr = FUNC5(value, ',');
		if (comma_ptr) {
			FUNC4("Illegal \",\" in response for \"%s\".\n",
					param->name);
			return -1;
		}

		tmp_ptr = FUNC2(param, value);
		if (!tmp_ptr)
			return -1;
	}

	if (FUNC3(param, value) < 0)
		return -1;

	return 0;
}