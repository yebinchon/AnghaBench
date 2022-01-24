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
struct iscsi_np {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGINT ; 
 int FUNC0 (struct iscsi_np*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(void *arg)
{
	struct iscsi_np *np = arg;
	int ret;

	FUNC1(SIGINT);

	while (1) {
		ret = FUNC0(np);
		/*
		 * We break and exit here unless another sock_accept() call
		 * is expected.
		 */
		if (ret != 1)
			break;
	}

	while (!FUNC2()) {
		FUNC3(100);
	}

	return 0;
}