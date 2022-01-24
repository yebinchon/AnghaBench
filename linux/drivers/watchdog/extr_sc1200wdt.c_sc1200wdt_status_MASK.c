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

/* Variables and functions */
 int WDIOF_KEEPALIVEPING ; 
 int /*<<< orphan*/  WDST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*) ; 

__attribute__((used)) static inline int FUNC1(void)
{
	unsigned char ret;

	FUNC0(WDST, &ret);
	/* If the bit is inactive, the watchdog is enabled, so return
	 * KEEPALIVEPING which is a bit of a kludge because there's nothing
	 * else for enabled/disabled status
	 */
	return (ret & 0x01) ? 0 : WDIOF_KEEPALIVEPING;
}