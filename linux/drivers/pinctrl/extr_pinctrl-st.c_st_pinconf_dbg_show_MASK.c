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
struct st_pio_control {int dummy; } ;
struct seq_file {int dummy; } ;
struct pinctrl_dev {int /*<<< orphan*/  mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  gpio_chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC10 (struct st_pio_control*) ; 
 int /*<<< orphan*/  FUNC11 (struct seq_file*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,...) ; 
 struct st_pio_control* FUNC13 (struct pinctrl_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int FUNC15 (unsigned int) ; 
 unsigned int FUNC16 (struct st_pio_control*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct pinctrl_dev*,unsigned int,unsigned long*) ; 

__attribute__((used)) static void FUNC18(struct pinctrl_dev *pctldev,
				   struct seq_file *s, unsigned pin_id)
{
	struct st_pio_control *pc;
	unsigned long config;
	unsigned int function;
	int offset = FUNC15(pin_id);
	char f[16];

	FUNC9(&pctldev->mutex);
	pc = FUNC13(pctldev, pin_id);
	FUNC17(pctldev, pin_id, &config);
	FUNC8(&pctldev->mutex);

	function = FUNC16(pc, offset);
	if (function)
		FUNC12(f, 10, "Alt Fn %u", function);
	else
		FUNC12(f, 5, "GPIO");

	FUNC11(s, "[OE:%d,PU:%ld,OD:%ld]\t%s\n"
		"\t\t[retime:%ld,invclk:%ld,clknotdat:%ld,"
		"de:%ld,rt-clk:%ld,rt-delay:%ld]",
		!FUNC14(&FUNC10(pc)->gpio_chip, offset),
		FUNC1(config),
		FUNC0(config),
		f,
		FUNC2(config),
		FUNC7(config),
		FUNC4(config),
		FUNC6(config),
		FUNC3(config),
		FUNC5(config));
}