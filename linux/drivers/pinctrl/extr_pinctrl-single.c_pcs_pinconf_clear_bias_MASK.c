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
struct pinctrl_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * pcs_bias ; 
 int /*<<< orphan*/  FUNC1 (struct pinctrl_dev*,unsigned int,unsigned long*,int) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pinctrl_dev *pctldev, unsigned pin)
{
	unsigned long config;
	int i;
	for (i = 0; i < FUNC0(pcs_bias); i++) {
		config = FUNC2(pcs_bias[i], 0);
		FUNC1(pctldev, pin, &config, 1);
	}
}