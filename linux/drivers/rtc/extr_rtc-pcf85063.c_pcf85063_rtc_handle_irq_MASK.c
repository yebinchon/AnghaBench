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
struct pcf85063 {int /*<<< orphan*/  regmap; int /*<<< orphan*/  rtc; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int PCF85063_CTRL2_AF ; 
 unsigned int PCF85063_CTRL2_AIE ; 
 int /*<<< orphan*/  PCF85063_REG_CTRL2 ; 
 int RTC_AF ; 
 int RTC_IRQF ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct pcf85063 *pcf85063 = dev_id;
	unsigned int val;
	int err;

	err = FUNC0(pcf85063->regmap, PCF85063_REG_CTRL2, &val);
	if (err)
		return IRQ_NONE;

	if (val & PCF85063_CTRL2_AF) {
		FUNC2(pcf85063->rtc, 1, RTC_IRQF | RTC_AF);
		FUNC1(pcf85063->regmap, PCF85063_REG_CTRL2,
				   PCF85063_CTRL2_AIE | PCF85063_CTRL2_AF,
				   0);
		return IRQ_HANDLED;
	}

	return IRQ_NONE;
}