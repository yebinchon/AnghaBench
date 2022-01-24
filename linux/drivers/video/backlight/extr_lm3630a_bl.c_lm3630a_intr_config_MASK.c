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
struct lm3630a_chip {int /*<<< orphan*/  irqthread; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  REG_INT_EN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  lm3630a_delayed_func ; 
 int /*<<< orphan*/  lm3630a_isr_func ; 
 int FUNC4 (struct lm3630a_chip*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,struct lm3630a_chip*) ; 

__attribute__((used)) static int FUNC6(struct lm3630a_chip *pchip)
{
	int rval;

	rval = FUNC4(pchip, REG_INT_EN, 0x87);
	if (rval < 0)
		return rval;

	FUNC0(&pchip->work, lm3630a_delayed_func);
	pchip->irqthread = FUNC1("lm3630a-irqthd");
	if (!pchip->irqthread) {
		FUNC3(pchip->dev, "create irq thread fail\n");
		return -ENOMEM;
	}
	if (FUNC5
	    (pchip->irq, NULL, lm3630a_isr_func,
	     IRQF_TRIGGER_FALLING | IRQF_ONESHOT, "lm3630a_irq", pchip)) {
		FUNC3(pchip->dev, "request threaded irq fail\n");
		FUNC2(pchip->irqthread);
		return -ENOMEM;
	}
	return rval;
}