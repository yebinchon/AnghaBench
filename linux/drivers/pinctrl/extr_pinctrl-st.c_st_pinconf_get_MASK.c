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
struct st_pio_control {int dummy; } ;
struct st_pinctrl {int dummy; } ;
struct pinctrl_dev {int dummy; } ;

/* Variables and functions */
 struct st_pinctrl* FUNC0 (struct pinctrl_dev*) ; 
 struct st_pio_control* FUNC1 (struct pinctrl_dev*,unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct st_pio_control*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (struct st_pinctrl*,struct st_pio_control*,int,unsigned long*) ; 

__attribute__((used)) static int FUNC5(struct pinctrl_dev *pctldev,
			     unsigned pin_id, unsigned long *config)
{
	int pin = FUNC2(pin_id);
	struct st_pinctrl *info = FUNC0(pctldev);
	struct st_pio_control *pc = FUNC1(pctldev, pin_id);

	*config = 0;
	FUNC3(pc, pin, config);
	FUNC4(info, pc, pin, config);

	return 0;
}