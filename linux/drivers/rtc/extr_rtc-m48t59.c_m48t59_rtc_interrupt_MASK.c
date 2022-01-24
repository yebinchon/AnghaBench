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
typedef  int u8 ;
struct m48t59_private {int /*<<< orphan*/  rtc; int /*<<< orphan*/  lock; } ;
struct m48t59_plat_data {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  M48T59_FLAGS ; 
 int M48T59_FLAGS_AF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int RTC_AF ; 
 int RTC_IRQF ; 
 struct m48t59_private* FUNC1 (struct device*) ; 
 struct m48t59_plat_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct device *dev = (struct device *)dev_id;
	struct m48t59_plat_data *pdata = FUNC2(dev);
	struct m48t59_private *m48t59 = FUNC1(dev);
	u8 event;

	FUNC4(&m48t59->lock);
	event = FUNC0(M48T59_FLAGS);
	FUNC5(&m48t59->lock);

	if (event & M48T59_FLAGS_AF) {
		FUNC3(m48t59->rtc, 1, (RTC_AF | RTC_IRQF));
		return IRQ_HANDLED;
	}

	return IRQ_NONE;
}