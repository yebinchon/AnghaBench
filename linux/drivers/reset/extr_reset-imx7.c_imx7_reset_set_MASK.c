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
struct reset_controller_dev {int dummy; } ;
struct imx7_src {TYPE_1__* signals; } ;
struct TYPE_2__ {unsigned int bit; } ;

/* Variables and functions */
#define  IMX7_RESET_PCIEPHY 129 
#define  IMX7_RESET_PCIE_CTRL_APPS_EN 128 
 int FUNC0 (struct imx7_src*,unsigned long,unsigned int) ; 
 struct imx7_src* FUNC1 (struct reset_controller_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct reset_controller_dev *rcdev,
			  unsigned long id, bool assert)
{
	struct imx7_src *imx7src = FUNC1(rcdev);
	const unsigned int bit = imx7src->signals[id].bit;
	unsigned int value = assert ? bit : 0;

	switch (id) {
	case IMX7_RESET_PCIEPHY:
		/*
		 * wait for more than 10us to release phy g_rst and
		 * btnrst
		 */
		if (!assert)
			FUNC2(10);
		break;

	case IMX7_RESET_PCIE_CTRL_APPS_EN:
		value = assert ? 0 : bit;
		break;
	}

	return FUNC0(imx7src, id, value);
}