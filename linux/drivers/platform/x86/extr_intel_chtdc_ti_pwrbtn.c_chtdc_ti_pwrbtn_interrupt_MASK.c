#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct TYPE_2__ {struct device* parent; } ;
struct input_dev {TYPE_1__ dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHTDC_TI_SIRQ_REG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int SIRQ_PWRBTN_REL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct regmap* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct input_dev *input = dev_id;
	struct device *dev = input->dev.parent;
	struct regmap *regmap = FUNC1(dev);
	int state;

	if (!FUNC4(regmap, CHTDC_TI_SIRQ_REG, &state)) {
		FUNC0(dev, "SIRQ_REG=0x%x\n", state);
		FUNC2(input, KEY_POWER, !(state & SIRQ_PWRBTN_REL));
		FUNC3(input);
	}

	return IRQ_HANDLED;
}