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
struct rtc_wkalrm {unsigned int pending; unsigned int enabled; int /*<<< orphan*/  time; } ;
struct device {int dummy; } ;
struct coh901331_port {int /*<<< orphan*/  clk; scalar_t__ virtbase; } ;

/* Variables and functions */
 scalar_t__ COH901331_ALARM ; 
 scalar_t__ COH901331_IRQ_EVENT ; 
 scalar_t__ COH901331_IRQ_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct coh901331_port* FUNC2 (struct device*) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct rtc_wkalrm *alarm)
{
	struct coh901331_port *rtap = FUNC2(dev);

	FUNC1(rtap->clk);
	FUNC4(FUNC3(rtap->virtbase + COH901331_ALARM), &alarm->time);
	alarm->pending = FUNC3(rtap->virtbase + COH901331_IRQ_EVENT) & 1U;
	alarm->enabled = FUNC3(rtap->virtbase + COH901331_IRQ_MASK) & 1U;
	FUNC0(rtap->clk);

	return 0;
}