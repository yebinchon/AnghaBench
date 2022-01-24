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

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  xb_waitq ; 
 int /*<<< orphan*/ * xenbus_task ; 

__attribute__((used)) static int FUNC7(void *unused)
{
	int err;

	while (!FUNC0()) {
		if (FUNC5(xb_waitq, FUNC6()))
			continue;

		err = FUNC2();
		if (err == -ENOMEM)
			FUNC4();
		else if (err)
			FUNC1("error %d while reading message\n",
					    err);

		err = FUNC3();
		if (err)
			FUNC1("error %d while writing message\n",
					    err);
	}

	xenbus_task = NULL;
	return 0;
}