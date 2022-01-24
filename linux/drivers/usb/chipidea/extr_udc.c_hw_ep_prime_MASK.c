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
 int EAGAIN ; 
 int /*<<< orphan*/  OP_ENDPTPRIME ; 
 int /*<<< orphan*/  OP_ENDPTSETUPSTAT ; 
 int RX ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (struct ci_hdrc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ci_hdrc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct ci_hdrc *ci, int num, int dir, int is_ctrl)
{
	int n = FUNC2(num, dir);

	/* Synchronize before ep prime */
	FUNC5();

	if (is_ctrl && dir == RX && FUNC3(ci, OP_ENDPTSETUPSTAT, FUNC0(num)))
		return -EAGAIN;

	FUNC4(ci, OP_ENDPTPRIME, ~0, FUNC0(n));

	while (FUNC3(ci, OP_ENDPTPRIME, FUNC0(n)))
		FUNC1();
	if (is_ctrl && dir == RX && FUNC3(ci, OP_ENDPTSETUPSTAT, FUNC0(num)))
		return -EAGAIN;

	/* status shoult be tested according with manual but it doesn't work */
	return 0;
}