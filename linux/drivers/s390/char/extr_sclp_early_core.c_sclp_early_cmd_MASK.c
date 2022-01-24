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
typedef  int /*<<< orphan*/  sclp_cmdw_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,void*) ; 

int FUNC4(sclp_cmdw_t cmd, void *sccb)
{
	unsigned long flags;
	int rc;

	FUNC1(flags);
	rc = FUNC3(cmd, sccb);
	if (rc)
		goto out;
	FUNC2();
out:
	FUNC0(flags);
	return rc;
}