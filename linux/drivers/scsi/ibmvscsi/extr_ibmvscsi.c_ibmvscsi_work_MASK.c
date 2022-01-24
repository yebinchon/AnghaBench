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
struct ibmvscsi_host_data {int /*<<< orphan*/  work_wait_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MIN_NICE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvscsi_host_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvscsi_host_data*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void *data)
{
	struct ibmvscsi_host_data *hostdata = data;
	int rc;

	FUNC4(current, MIN_NICE);

	while (1) {
		rc = FUNC5(hostdata->work_wait_q,
					      FUNC2(hostdata));

		FUNC0(rc);

		if (FUNC3())
			break;

		FUNC1(hostdata);
	}

	return 0;
}