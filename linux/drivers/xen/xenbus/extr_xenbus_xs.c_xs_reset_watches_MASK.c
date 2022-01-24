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
 int EEXIST ; 
 int /*<<< orphan*/  XBT_NIL ; 
 int /*<<< orphan*/  XS_RESET_WATCHES ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void)
{
	int err;

	if (!FUNC1() || FUNC2())
		return;

	if (FUNC3())
		return;

	if (!FUNC4("control",
				  "platform-feature-xs_reset_watches", 0))
		return;

	err = FUNC5(FUNC6(XBT_NIL, XS_RESET_WATCHES, "", NULL));
	if (err && err != -EEXIST)
		FUNC0("xs_reset_watches failed: %d\n", err);
}