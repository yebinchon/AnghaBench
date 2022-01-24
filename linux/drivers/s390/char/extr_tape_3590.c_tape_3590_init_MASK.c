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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  TAPE_DBF_AREA ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  debug_sprintf_view ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tape_3590_driver ; 
 int /*<<< orphan*/  tape_3590_wq ; 

__attribute__((used)) static int
FUNC7(void)
{
	int rc;

	TAPE_DBF_AREA = FUNC3("tape_3590", 2, 2, 4 * sizeof(long));
	FUNC4(TAPE_DBF_AREA, &debug_sprintf_view);
#ifdef DBF_LIKE_HELL
	debug_set_level(TAPE_DBF_AREA, 6);
#endif

	FUNC0(3, "3590 init\n");

	tape_3590_wq = FUNC1("tape_3590", 0, 0);
	if (!tape_3590_wq)
		return -ENOMEM;

	/* Register driver for 3590 tapes. */
	rc = FUNC2(&tape_3590_driver);
	if (rc) {
		FUNC6(tape_3590_wq);
		FUNC0(3, "3590 init failed\n");
	} else
		FUNC0(3, "3590 registered\n");
	return rc;
}