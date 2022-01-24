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
typedef  unsigned int u32 ;
struct pinctrl_dev {int /*<<< orphan*/  dev; } ;
struct atmel_pioctrl {TYPE_1__* groups; } ;
struct TYPE_2__ {unsigned int name; unsigned int pin; } ;

/* Variables and functions */
 unsigned int ATMEL_PIO_CFGR_FUNC_MASK ; 
 unsigned int* atmel_functions ; 
 unsigned int FUNC0 (struct pinctrl_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct pinctrl_dev*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 struct atmel_pioctrl* FUNC3 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC4(struct pinctrl_dev *pctldev,
			     unsigned function,
			     unsigned group)
{
	struct atmel_pioctrl *atmel_pioctrl = FUNC3(pctldev);
	unsigned pin;
	u32 conf;

	FUNC2(pctldev->dev, "enable function %s group %s\n",
		atmel_functions[function], atmel_pioctrl->groups[group].name);

	pin = atmel_pioctrl->groups[group].pin;
	conf = FUNC0(pctldev, pin);
	conf &= (~ATMEL_PIO_CFGR_FUNC_MASK);
	conf |= (function & ATMEL_PIO_CFGR_FUNC_MASK);
	FUNC2(pctldev->dev, "pin: %u, conf: 0x%08x\n", pin, conf);
	FUNC1(pctldev, pin, conf);

	return 0;
}