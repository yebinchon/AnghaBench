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
struct loopback_test {char* test_name; int /*<<< orphan*/  test_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct loopback_test*) ; 
 TYPE_1__* dict ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct loopback_test*) ; 
 int /*<<< orphan*/  FUNC3 (struct loopback_test*) ; 
 int FUNC4 (struct loopback_test*) ; 
 int /*<<< orphan*/  FUNC5 (struct loopback_test*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct loopback_test*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (struct loopback_test*) ; 

void FUNC11(struct loopback_test *t)
{
	int i;
	int ret;

	for (i = 0; dict[i].name != NULL; i++) {
		if (FUNC8(dict[i].name, t->test_name))
			t->test_id = dict[i].type;
	}
	if (!t->test_id) {
		FUNC1(stderr, "invalid test %s\n", t->test_name);
		FUNC9();
		return;
	}

	FUNC5(t);

	ret = FUNC4(t);
	if (ret)
		goto err;

	FUNC7(t);

	ret = FUNC10(t);
	FUNC0(t);
	if (ret)
		goto err;


	FUNC2(t);

	FUNC3(t);

	return;

err:
	FUNC6("Error running test\n");
	return;
}