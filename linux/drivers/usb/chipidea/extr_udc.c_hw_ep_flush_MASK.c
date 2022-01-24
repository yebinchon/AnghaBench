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
struct ci_hdrc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  OP_ENDPTFLUSH ; 
 int /*<<< orphan*/  OP_ENDPTSTAT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (struct ci_hdrc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ci_hdrc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ci_hdrc *ci, int num, int dir)
{
	int n = FUNC2(num, dir);

	do {
		/* flush any pending transfer */
		FUNC4(ci, OP_ENDPTFLUSH, ~0, FUNC0(n));
		while (FUNC3(ci, OP_ENDPTFLUSH, FUNC0(n)))
			FUNC1();
	} while (FUNC3(ci, OP_ENDPTSTAT, FUNC0(n)));

	return 0;
}