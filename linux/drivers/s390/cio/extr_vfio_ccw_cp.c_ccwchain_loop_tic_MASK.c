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
struct channel_program {int dummy; } ;
struct ccwchain {int ch_len; struct ccw1* ch_ccw; } ;
struct ccw1 {int /*<<< orphan*/  cda; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccw1*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct channel_program*) ; 
 scalar_t__ FUNC2 (struct ccw1*,struct channel_program*) ; 

__attribute__((used)) static int FUNC3(struct ccwchain *chain, struct channel_program *cp)
{
	struct ccw1 *tic;
	int i, ret;

	for (i = 0; i < chain->ch_len; i++) {
		tic = chain->ch_ccw + i;

		if (!FUNC0(tic))
			continue;

		/* May transfer to an existing chain. */
		if (FUNC2(tic, cp))
			continue;

		/* Build a ccwchain for the next segment */
		ret = FUNC1(tic->cda, cp);
		if (ret)
			return ret;
	}

	return 0;
}