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
 int EINTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cio_work_q ; 
 int /*<<< orphan*/  css_bus_type ; 
 int /*<<< orphan*/  css_eval_scheduled ; 
 int /*<<< orphan*/  css_eval_wq ; 
 int /*<<< orphan*/  css_settle ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

int FUNC4(void)
{
	int ret;

	/* Wait for the evaluation of subchannels to finish. */
	ret = FUNC3(css_eval_wq,
				       FUNC0(&css_eval_scheduled) == 0);
	if (ret)
		return -EINTR;
	FUNC2(cio_work_q);
	/* Wait for the subchannel type specific initialization to finish */
	return FUNC1(&css_bus_type, NULL, NULL, css_settle);
}