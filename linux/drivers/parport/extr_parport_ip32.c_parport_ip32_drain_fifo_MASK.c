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
struct parport {int dummy; } ;

/* Variables and functions */
 int ECR_F_EMPTY ; 
 int /*<<< orphan*/  current ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (struct parport*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static unsigned int FUNC6(struct parport *p,
					    unsigned long timeout)
{
	unsigned long expire = jiffies + timeout;
	unsigned int polling_interval;
	unsigned int counter;

	/* Busy wait for approx. 200us */
	for (counter = 0; counter < 40; counter++) {
		if (FUNC1(p) & ECR_F_EMPTY)
			break;
		if (FUNC3(jiffies, expire))
			break;
		if (FUNC2(current))
			break;
		FUNC5(5);
	}
	/* Poll slowly.  Polling interval starts with 1 millisecond, and is
	 * increased exponentially until 128.  */
	polling_interval = 1; /* msecs */
	while (!(FUNC1(p) & ECR_F_EMPTY)) {
		if (FUNC4(jiffies, expire))
			break;
		FUNC0(polling_interval);
		if (FUNC2(current))
			break;
		if (polling_interval < 128)
			polling_interval *= 2;
	}

	return !!(FUNC1(p) & ECR_F_EMPTY);
}