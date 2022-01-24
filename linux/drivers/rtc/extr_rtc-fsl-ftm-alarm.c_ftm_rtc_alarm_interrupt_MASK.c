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
struct ftm_rtc {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct ftm_rtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ftm_rtc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ftm_rtc*) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev)
{
	struct ftm_rtc *rtc = dev;

	FUNC1(rtc);
	FUNC2(rtc);
	FUNC0(rtc);

	return IRQ_HANDLED;
}