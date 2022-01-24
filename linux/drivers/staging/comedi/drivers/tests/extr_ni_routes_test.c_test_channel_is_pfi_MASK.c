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
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

void FUNC4(void)
{
	FUNC2();
	FUNC3(FUNC1(FUNC0(0)), "check First pfi channel\n");
	FUNC3(FUNC1(FUNC0(10)), "check 10th pfi channel\n");
	FUNC3(FUNC1(FUNC0(-1)), "check last pfi channel\n");
	FUNC3(!FUNC1(FUNC0(-1) + 1),
		 "check first non pfi channel\n");
}