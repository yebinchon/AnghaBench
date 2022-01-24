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
struct q6v5 {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct q6v5 *qproc, struct device **pds,
			   size_t pd_count)
{
	int ret;
	int i;

	for (i = 0; i < pd_count; i++) {
		FUNC0(pds[i], INT_MAX);
		ret = FUNC1(pds[i]);
		if (ret < 0)
			goto unroll_pd_votes;
	}

	return 0;

unroll_pd_votes:
	for (i--; i >= 0; i--) {
		FUNC0(pds[i], 0);
		FUNC2(pds[i]);
	}

	return ret;
}