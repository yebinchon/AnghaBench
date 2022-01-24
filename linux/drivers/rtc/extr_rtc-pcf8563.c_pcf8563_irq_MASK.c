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
struct pcf8563 {int /*<<< orphan*/  client; int /*<<< orphan*/  rtc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int RTC_AF ; 
 int RTC_IRQF ; 
 struct pcf8563* FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct pcf8563 *pcf8563 = FUNC0(dev_id);
	int err;
	char pending;

	err = FUNC1(pcf8563->client, NULL, &pending);
	if (err)
		return IRQ_NONE;

	if (pending) {
		FUNC3(pcf8563->rtc, 1, RTC_IRQF | RTC_AF);
		FUNC2(pcf8563->client, 1);
		return IRQ_HANDLED;
	}

	return IRQ_NONE;
}