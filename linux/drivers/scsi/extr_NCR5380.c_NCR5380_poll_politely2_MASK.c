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
typedef  int u8 ;
struct NCR5380_hostdata {unsigned long poll_loops; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (unsigned long) ; 

__attribute__((used)) static int FUNC6(struct NCR5380_hostdata *hostdata,
                                  unsigned int reg1, u8 bit1, u8 val1,
                                  unsigned int reg2, u8 bit2, u8 val2,
                                  unsigned long wait)
{
	unsigned long n = hostdata->poll_loops;
	unsigned long deadline = jiffies + wait;

	do {
		if ((FUNC0(reg1) & bit1) == val1)
			return 0;
		if ((FUNC0(reg2) & bit2) == val2)
			return 0;
		FUNC1();
	} while (n--);

	if (FUNC3() || FUNC2())
		return -ETIMEDOUT;

	/* Repeatedly sleep for 1 ms until deadline */
	while (FUNC5(deadline)) {
		FUNC4(1);
		if ((FUNC0(reg1) & bit1) == val1)
			return 0;
		if ((FUNC0(reg2) & bit2) == val2)
			return 0;
	}

	return -ETIMEDOUT;
}