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
struct esas2r_adapter {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_DEGRADED_MODE ; 
 int /*<<< orphan*/  ESAS2R_LOG_CRIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC2(struct esas2r_adapter *a, char *error_str)
{
	FUNC1(AF_DEGRADED_MODE, &a->flags);
	FUNC0(ESAS2R_LOG_CRIT,
		   "setting adapter to degraded mode: %s\n", error_str);
	return false;
}