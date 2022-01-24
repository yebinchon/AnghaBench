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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  qeth_l3_ip6_notifier ; 
 int /*<<< orphan*/  qeth_l3_ip_notifier ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void)
{
	int rc;

	FUNC0(SETUP, 5, "regnotif");
	rc = FUNC2(&qeth_l3_ip_notifier);
	if (rc)
		return rc;
	rc = FUNC1(&qeth_l3_ip6_notifier);
	if (rc) {
		FUNC3(&qeth_l3_ip_notifier);
		return rc;
	}
	return 0;
}