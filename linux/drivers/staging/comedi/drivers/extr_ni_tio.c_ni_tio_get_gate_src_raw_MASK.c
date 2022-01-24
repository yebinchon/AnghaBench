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
struct ni_gpct {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (struct ni_gpct*) ; 
 unsigned int FUNC1 (struct ni_gpct*) ; 
 unsigned int FUNC2 (struct ni_gpct*) ; 
 unsigned int FUNC3 (struct ni_gpct*) ; 

__attribute__((used)) static int FUNC4(struct ni_gpct *counter,
				   unsigned int gate_index,
				   unsigned int *gate_source)
{
	switch (gate_index) {
	case 0:
		*gate_source = FUNC2(counter)
			     | FUNC3(counter);
		break;
	case 1:
		*gate_source = FUNC0(counter)
			     | FUNC1(counter);
		break;
	default:
		return -EINVAL;
	}
	return 0;
}