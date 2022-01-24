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
struct rk805_pctrl_info {TYPE_1__* functions; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {int mux_option; } ;

/* Variables and functions */
 int FUNC0 (struct pinctrl_dev*,int,int) ; 
 struct rk805_pctrl_info* FUNC1 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC2(struct pinctrl_dev *pctldev,
				 unsigned int function,
				 unsigned int group)
{
	struct rk805_pctrl_info *pci = FUNC1(pctldev);
	int mux = pci->functions[function].mux_option;
	int offset = group;

	return FUNC0(pctldev, offset, mux);
}