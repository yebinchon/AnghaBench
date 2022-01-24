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
struct pl030_rtc {scalar_t__ base; } ;
struct amba_device {int /*<<< orphan*/ * irq; } ;

/* Variables and functions */
 scalar_t__ RTC_CR ; 
 struct pl030_rtc* FUNC0 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amba_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct pl030_rtc*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct amba_device *dev)
{
	struct pl030_rtc *rtc = FUNC0(dev);

	FUNC4(0, rtc->base + RTC_CR);

	FUNC2(dev->irq[0], rtc);
	FUNC3(rtc->base);
	FUNC1(dev);

	return 0;
}