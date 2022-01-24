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
 int /*<<< orphan*/  OP_ENDPTCOMPLETE ; 
 int /*<<< orphan*/  OP_ENDPTFLUSH ; 
 int /*<<< orphan*/  OP_ENDPTPRIME ; 
 int /*<<< orphan*/  OP_ENDPTSETUPSTAT ; 
 scalar_t__ FUNC0 (struct ci_hdrc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ci_hdrc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ci_hdrc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct ci_hdrc *ci)
{
	FUNC1(ci, 0);

	/* ESS flushes only at end?!? */
	FUNC2(ci, OP_ENDPTFLUSH,    ~0, ~0);

	/* clear setup token semaphores */
	FUNC2(ci, OP_ENDPTSETUPSTAT, 0,  0);

	/* clear complete status */
	FUNC2(ci, OP_ENDPTCOMPLETE,  0,  0);

	/* wait until all bits cleared */
	while (FUNC0(ci, OP_ENDPTPRIME, ~0))
		FUNC3(10);             /* not RTOS friendly */

	/* reset all endpoints ? */

	/* reset internal status and wait for further instructions
	   no need to verify the port reset status (ESS does it) */

	return 0;
}