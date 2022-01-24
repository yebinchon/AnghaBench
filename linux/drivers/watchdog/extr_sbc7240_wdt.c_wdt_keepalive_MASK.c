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
 int /*<<< orphan*/  SBC7240_ENABLED_STATUS_BIT ; 
 int /*<<< orphan*/  SBC7240_ENABLE_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wdt_status ; 

__attribute__((used)) static inline void FUNC2(void)
{
	if (FUNC1(SBC7240_ENABLED_STATUS_BIT, &wdt_status))
		FUNC0(SBC7240_ENABLE_PORT);
}