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
struct iscsi_param_list {int /*<<< orphan*/  extra_response_list; } ;
struct iscsi_extra_response {int /*<<< orphan*/  er_list; int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* NOTUNDERSTOOD ; 
 scalar_t__ VALUE_MAXLEN ; 
 struct iscsi_extra_response* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(
	char *key,
	char *value,
	struct iscsi_param_list *param_list)
{
	struct iscsi_extra_response *extra_response;

	if (FUNC5(value) > VALUE_MAXLEN) {
		FUNC3("Value for notunderstood key \"%s\" exceeds %d,"
			" protocol error.\n", key, VALUE_MAXLEN);
		return -1;
	}

	extra_response = FUNC1(sizeof(struct iscsi_extra_response), GFP_KERNEL);
	if (!extra_response) {
		FUNC3("Unable to allocate memory for"
			" struct iscsi_extra_response.\n");
		return -ENOMEM;
	}
	FUNC0(&extra_response->er_list);

	FUNC4(extra_response->key, key, sizeof(extra_response->key));
	FUNC4(extra_response->value, NOTUNDERSTOOD,
		sizeof(extra_response->value));

	FUNC2(&extra_response->er_list,
			&param_list->extra_response_list);
	return 0;
}