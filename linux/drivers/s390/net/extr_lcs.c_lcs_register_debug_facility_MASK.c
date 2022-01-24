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
 int /*<<< orphan*/  debug_hex_ascii_view ; 
 int /*<<< orphan*/ * FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * lcs_dbf_setup ; 
 int /*<<< orphan*/ * lcs_dbf_trace ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(void)
{
	lcs_dbf_setup = FUNC0("lcs_setup", 2, 1, 8);
	lcs_dbf_trace = FUNC0("lcs_trace", 4, 1, 8);
	if (lcs_dbf_setup == NULL || lcs_dbf_trace == NULL) {
		FUNC4("Not enough memory for debug facility.\n");
		FUNC3();
		return -ENOMEM;
	}
	FUNC1(lcs_dbf_setup, &debug_hex_ascii_view);
	FUNC2(lcs_dbf_setup, 2);
	FUNC1(lcs_dbf_trace, &debug_hex_ascii_view);
	FUNC2(lcs_dbf_trace, 2);
	return 0;
}