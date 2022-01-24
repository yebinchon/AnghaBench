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
struct st_rtc {int /*<<< orphan*/  lock; scalar_t__ ioaddr; } ;

/* Variables and functions */
 scalar_t__ LPC_LPA_LSB_OFF ; 
 scalar_t__ LPC_LPA_MSB_OFF ; 
 scalar_t__ LPC_LPA_START_OFF ; 
 scalar_t__ LPC_WDT_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct st_rtc *rtc,
				unsigned long msb, unsigned long  lsb)
{
	unsigned long flags;

	FUNC0(&rtc->lock, flags);

	FUNC2(1, rtc->ioaddr + LPC_WDT_OFF);

	FUNC2(msb, rtc->ioaddr + LPC_LPA_MSB_OFF);
	FUNC2(lsb, rtc->ioaddr + LPC_LPA_LSB_OFF);
	FUNC2(1, rtc->ioaddr + LPC_LPA_START_OFF);

	FUNC2(0, rtc->ioaddr + LPC_WDT_OFF);

	FUNC1(&rtc->lock, flags);
}