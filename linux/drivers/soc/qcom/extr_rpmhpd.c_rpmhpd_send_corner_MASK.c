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
struct tcs_cmd {unsigned int data; int /*<<< orphan*/  addr; } ;
struct rpmhpd {int /*<<< orphan*/  dev; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,struct tcs_cmd*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,struct tcs_cmd*,int) ; 

__attribute__((used)) static int FUNC2(struct rpmhpd *pd, int state,
			      unsigned int corner, bool sync)
{
	struct tcs_cmd cmd = {
		.addr = pd->addr,
		.data = corner,
	};

	/*
	 * Wait for an ack only when we are increasing the
	 * perf state of the power domain
	 */
	if (sync)
		return FUNC0(pd->dev, state, &cmd, 1);
	else
		return FUNC1(pd->dev, state, &cmd, 1);
}