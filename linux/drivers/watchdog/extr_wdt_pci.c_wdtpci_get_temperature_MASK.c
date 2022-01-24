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
 int /*<<< orphan*/  WDT_RT ; 
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  wdtpci_lock ; 

__attribute__((used)) static int FUNC4(int *temperature)
{
	unsigned short c;
	unsigned long flags;
	FUNC1(&wdtpci_lock, flags);
	c = FUNC0(WDT_RT);
	FUNC3(8);
	FUNC2(&wdtpci_lock, flags);
	*temperature = (c * 11 / 15) + 7;
	return 0;
}