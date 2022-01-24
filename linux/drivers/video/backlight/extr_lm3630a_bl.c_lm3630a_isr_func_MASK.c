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
struct lm3630a_chip {int /*<<< orphan*/  dev; int /*<<< orphan*/  work; int /*<<< orphan*/  irqthread; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  INT_DEBOUNCE_MSEC ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  REG_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct lm3630a_chip*,int /*<<< orphan*/ ,int,int) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *chip)
{
	int rval;
	struct lm3630a_chip *pchip = chip;
	unsigned long delay = FUNC2(INT_DEBOUNCE_MSEC);

	FUNC3(pchip->irqthread, &pchip->work, delay);

	rval = FUNC1(pchip, REG_CTRL, 0x80, 0x00);
	if (rval < 0) {
		FUNC0(pchip->dev, "i2c failed to access register\n");
		return IRQ_NONE;
	}
	return IRQ_HANDLED;
}