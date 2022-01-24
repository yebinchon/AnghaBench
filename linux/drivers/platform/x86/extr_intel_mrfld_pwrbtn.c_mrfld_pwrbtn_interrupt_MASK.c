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
 int /*<<< orphan*/  BCOVE_LVL1_PWRBTN ; 
 int /*<<< orphan*/  BCOVE_MIRQLVL1 ; 
 int /*<<< orphan*/  BCOVE_PBSTATUS ; 
 unsigned int BCOVE_PBSTATUS_PBLVL ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned int) ; 
 struct regmap* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int FUNC4 (struct regmap*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct input_dev *input = dev_id;
	struct device *dev = input->dev.parent;
	struct regmap *regmap = FUNC1(dev);
	unsigned int state;
	int ret;

	ret = FUNC4(regmap, BCOVE_PBSTATUS, &state);
	if (ret)
		return IRQ_NONE;

	FUNC0(dev, "PBSTATUS=0x%x\n", state);
	FUNC2(input, KEY_POWER, !(state & BCOVE_PBSTATUS_PBLVL));
	FUNC3(input);

	FUNC5(regmap, BCOVE_MIRQLVL1, BCOVE_LVL1_PWRBTN, 0);
	return IRQ_HANDLED;
}