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
typedef  size_t u32 ;
struct stm32_gpio_bank {int dummy; } ;
struct seq_file {int dummy; } ;
struct pinctrl_gpio_range {int /*<<< orphan*/  gc; } ;
struct pinctrl_dev {int dummy; } ;

/* Variables and functions */
 struct stm32_gpio_bank* FUNC0 (int /*<<< orphan*/ ) ; 
 struct pinctrl_gpio_range* FUNC1 (struct pinctrl_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,...) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (struct stm32_gpio_bank*,int,int) ; 
 size_t FUNC5 (struct stm32_gpio_bank*,int) ; 
 size_t FUNC6 (struct stm32_gpio_bank*,int) ; 
 size_t FUNC7 (struct stm32_gpio_bank*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct stm32_gpio_bank*,int,size_t*,size_t*) ; 

__attribute__((used)) static void FUNC9(struct pinctrl_dev *pctldev,
				 struct seq_file *s,
				 unsigned int pin)
{
	struct pinctrl_gpio_range *range;
	struct stm32_gpio_bank *bank;
	int offset;
	u32 mode, alt, drive, speed, bias;
	static const char * const modes[] = {
			"input", "output", "alternate", "analog" };
	static const char * const speeds[] = {
			"low", "medium", "high", "very high" };
	static const char * const biasing[] = {
			"floating", "pull up", "pull down", "" };
	bool val;

	range = FUNC1(pctldev, pin);
	if (!range)
		return;

	bank = FUNC0(range->gc);
	offset = FUNC3(pin);

	FUNC8(bank, offset, &mode, &alt);
	bias = FUNC5(bank, offset);

	FUNC2(s, "%s ", modes[mode]);

	switch (mode) {
	/* input */
	case 0:
		val = FUNC4(bank, offset, true);
		FUNC2(s, "- %s - %s",
			   val ? "high" : "low",
			   biasing[bias]);
		break;

	/* output */
	case 1:
		drive = FUNC6(bank, offset);
		speed = FUNC7(bank, offset);
		val = FUNC4(bank, offset, false);
		FUNC2(s, "- %s - %s - %s - %s %s",
			   val ? "high" : "low",
			   drive ? "open drain" : "push pull",
			   biasing[bias],
			   speeds[speed], "speed");
		break;

	/* alternate */
	case 2:
		drive = FUNC6(bank, offset);
		speed = FUNC7(bank, offset);
		FUNC2(s, "%d - %s - %s - %s %s", alt,
			   drive ? "open drain" : "push pull",
			   biasing[bias],
			   speeds[speed], "speed");
		break;

	/* analog */
	case 3:
		break;
	}
}