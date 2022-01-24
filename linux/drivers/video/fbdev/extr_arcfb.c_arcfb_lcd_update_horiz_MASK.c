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
struct arcfb_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arcfb_par*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct arcfb_par *par, unsigned int left,
			unsigned int right, unsigned int top, unsigned int h)
{
	unsigned int distance, upper, lower;

	distance = h;
	upper = FUNC2(top);
	lower = FUNC3(upper + distance - 1, FUNC1(upper));

	while (distance > 0) {
		distance -= ((lower - upper) + 1 );
		FUNC0(par, upper, lower, left, right);
		upper = lower + 1;
		lower = FUNC3(upper + distance - 1, FUNC1(upper));
	}
}