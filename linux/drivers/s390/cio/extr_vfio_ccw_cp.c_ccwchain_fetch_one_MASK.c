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
struct ccwchain {struct ccw1* ch_ccw; } ;
struct ccw1 {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ccw1*) ; 
 int FUNC1 (struct ccwchain*,int,struct channel_program*) ; 
 int FUNC2 (struct ccwchain*,int,struct channel_program*) ; 

__attribute__((used)) static int FUNC3(struct ccwchain *chain,
			      int idx,
			      struct channel_program *cp)
{
	struct ccw1 *ccw = chain->ch_ccw + idx;

	if (FUNC0(ccw))
		return FUNC2(chain, idx, cp);

	return FUNC1(chain, idx, cp);
}