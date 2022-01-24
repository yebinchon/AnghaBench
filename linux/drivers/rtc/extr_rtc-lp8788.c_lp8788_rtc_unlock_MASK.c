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
struct lp8788 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LP8788_RTC_UNLOCK ; 
 int /*<<< orphan*/  RTC_LATCH ; 
 int /*<<< orphan*/  RTC_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct lp8788*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct lp8788 *lp)
{
	FUNC0(lp, LP8788_RTC_UNLOCK, RTC_UNLOCK);
	FUNC0(lp, LP8788_RTC_UNLOCK, RTC_LATCH);
}