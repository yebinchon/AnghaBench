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
struct visorhba_devdata {int /*<<< orphan*/  thread_wait_ms; int /*<<< orphan*/  interrupt_rcvd; int /*<<< orphan*/  rsp_queue; } ;
struct uiscmdrsp {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct uiscmdrsp*,struct visorhba_devdata*) ; 
 int /*<<< orphan*/  FUNC2 (struct uiscmdrsp*) ; 
 struct uiscmdrsp* FUNC3 (int const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(void *v)
{
	struct visorhba_devdata *devdata = v;
	struct uiscmdrsp *cmdrsp = NULL;
	const int size = sizeof(*cmdrsp);

	cmdrsp = FUNC3(size, GFP_ATOMIC);
	if (!cmdrsp)
		return -ENOMEM;

	while (1) {
		if (FUNC4())
			break;
		FUNC6(
			devdata->rsp_queue, (FUNC0(
					     &devdata->interrupt_rcvd) == 1),
				FUNC5(devdata->thread_wait_ms));
		/* drain queue */
		FUNC1(cmdrsp, devdata);
	}
	FUNC2(cmdrsp);
	return 0;
}