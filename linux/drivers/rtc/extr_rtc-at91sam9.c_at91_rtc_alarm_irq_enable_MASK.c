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
typedef  int u32 ;
struct sam9_rtc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int AT91_RTT_ALMIEN ; 
 int /*<<< orphan*/  MR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned int,int) ; 
 struct sam9_rtc* FUNC1 (struct device*) ; 
 int FUNC2 (struct sam9_rtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sam9_rtc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, unsigned int enabled)
{
	struct sam9_rtc *rtc = FUNC1(dev);
	u32 mr = FUNC2(rtc, MR);

	FUNC0(dev, "alarm_irq_enable: enabled=%08x, mr %08x\n", enabled, mr);
	if (enabled)
		FUNC3(rtc, MR, mr | AT91_RTT_ALMIEN);
	else
		FUNC3(rtc, MR, mr & ~AT91_RTT_ALMIEN);
	return 0;
}