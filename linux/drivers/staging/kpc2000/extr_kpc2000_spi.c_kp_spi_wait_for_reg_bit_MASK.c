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
struct kp_spi_controller_state {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (struct kp_spi_controller_state*,int) ; 
 unsigned long FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int
FUNC4(struct kp_spi_controller_state *cs, int idx,
			unsigned long bit)
{
	unsigned long timeout;

	timeout = jiffies + FUNC2(1000);
	while (!(FUNC1(cs, idx) & bit)) {
		if (FUNC3(jiffies, timeout)) {
			if (!(FUNC1(cs, idx) & bit))
				return -ETIMEDOUT;
			else
				return 0;
		}
		FUNC0();
	}
	return 0;
}