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
typedef  int /*<<< orphan*/  u32 ;
struct pinctrl_dev {int dummy; } ;
struct ltq_pinmux_info {int /*<<< orphan*/ * membase; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO3_ALT1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MUX_ALT0 ; 
 int MUX_ALT1 ; 
 int FUNC2 (int) ; 
 int PORT3 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ltq_pinmux_info* FUNC6 (struct pinctrl_dev*) ; 

__attribute__((used)) static inline int FUNC7(struct pinctrl_dev *pctrldev,
				int pin, int mux)
{
	struct ltq_pinmux_info *info = FUNC6(pctrldev);
	int port = FUNC2(pin);
	u32 alt1_reg = FUNC1(pin);

	if (port == PORT3)
		alt1_reg = GPIO3_ALT1;

	if (mux & MUX_ALT0)
		FUNC5(info->membase[0], FUNC0(pin), FUNC3(pin));
	else
		FUNC4(info->membase[0], FUNC0(pin), FUNC3(pin));

	if (mux & MUX_ALT1)
		FUNC5(info->membase[0], alt1_reg, FUNC3(pin));
	else
		FUNC4(info->membase[0], alt1_reg, FUNC3(pin));

	return 0;
}