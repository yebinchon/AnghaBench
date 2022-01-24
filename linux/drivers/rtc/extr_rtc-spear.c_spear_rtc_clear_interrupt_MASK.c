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
struct spear_rtc_config {int /*<<< orphan*/  lock; scalar_t__ ioaddr; } ;

/* Variables and functions */
 unsigned int RTC_INT_MASK ; 
 scalar_t__ STATUS_REG ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC4(struct spear_rtc_config *config)
{
	unsigned int val;
	unsigned long flags;

	FUNC1(&config->lock, flags);
	val = FUNC0(config->ioaddr + STATUS_REG);
	val |= RTC_INT_MASK;
	FUNC3(val, config->ioaddr + STATUS_REG);
	FUNC2(&config->lock, flags);
}