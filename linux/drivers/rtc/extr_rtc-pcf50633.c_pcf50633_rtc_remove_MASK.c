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
struct platform_device {int dummy; } ;
struct pcf50633_rtc {int /*<<< orphan*/  pcf; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCF50633_IRQ_ALARM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pcf50633_rtc* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct pcf50633_rtc *rtc;

	rtc = FUNC1(pdev);
	FUNC0(rtc->pcf, PCF50633_IRQ_ALARM);

	return 0;
}