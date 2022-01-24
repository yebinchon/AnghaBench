#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct lpc18xx_scu_data {TYPE_1__* func; } ;
struct device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int ngroups; int /*<<< orphan*/ * groups; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int ENOMEM ; 
 int FUNC_MAX ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC1 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* lpc18xx_pins ; 
 scalar_t__ FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
					 struct lpc18xx_scu_data *scu)
{
	u16 pins[FUNC0(lpc18xx_pins)];
	int func, ngroups, i;

	for (func = 0; func < FUNC_MAX; func++) {
		for (ngroups = 0, i = 0; i < FUNC0(lpc18xx_pins); i++) {
			if (FUNC2(i, func))
				pins[ngroups++] = i;
		}

		scu->func[func].ngroups = ngroups;
		scu->func[func].groups = FUNC1(dev,
						      ngroups, sizeof(char *),
						      GFP_KERNEL);
		if (!scu->func[func].groups)
			return -ENOMEM;

		for (i = 0; i < ngroups; i++)
			scu->func[func].groups[i] = lpc18xx_pins[pins[i]].name;
	}

	return 0;
}