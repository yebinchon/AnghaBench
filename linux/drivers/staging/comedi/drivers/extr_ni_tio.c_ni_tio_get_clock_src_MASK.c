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
typedef  unsigned int u64 ;
struct ni_gpct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int FUNC1 (struct ni_gpct*,unsigned int,unsigned int*) ; 
 int FUNC2 (struct ni_gpct*,unsigned int*) ; 

__attribute__((used)) static int FUNC3(struct ni_gpct *counter,
				unsigned int *clock_source,
				unsigned int *period_ns)
{
	u64 temp64 = 0;
	int ret;

	ret = FUNC2(counter, clock_source);
	if (ret)
		return ret;
	ret = FUNC1(counter, *clock_source, &temp64);
	if (ret)
		return ret;
	FUNC0(temp64, 1000);	/* ps to ns */
	*period_ns = temp64;
	return 0;
}