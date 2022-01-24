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
struct us_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ ISD200_ERROR ; 
 scalar_t__ ISD200_GOOD ; 
 scalar_t__ FUNC0 (struct us_data*) ; 
 scalar_t__ FUNC1 (struct us_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct us_data*,char*) ; 

__attribute__((used)) static int FUNC3(struct us_data *us)
{
	FUNC2(us, "ISD200 Initialization...\n");

	/* Initialize ISD200 info struct */

	if (FUNC1(us) == ISD200_ERROR) {
		FUNC2(us, "ERROR Initializing ISD200 Info struct\n");
	} else {
		/* Get device specific data */

		if (FUNC0(us) != ISD200_GOOD)
			FUNC2(us, "ISD200 Initialization Failure\n");
		else
			FUNC2(us, "ISD200 Initialization complete\n");
	}

	return 0;
}