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
typedef  int /*<<< orphan*/  u8 ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RV3029_IRQ_CTRL ; 
 int /*<<< orphan*/  RV3029_IRQ_CTRL_AIE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, unsigned int enable)
{
	int ret;
	u8 controls;

	ret = FUNC2(dev, RV3029_IRQ_CTRL, &controls, 1);
	if (ret < 0) {
		FUNC1(dev, "Read IRQ Control Register error %d\n", ret);
		return ret;
	}

	/* enable/disable AIE irq */
	if (enable)
		controls |= RV3029_IRQ_CTRL_AIE;
	else
		controls &= ~RV3029_IRQ_CTRL_AIE;

	ret = FUNC3(dev, RV3029_IRQ_CTRL, &controls, 1);
	if (ret < 0) {
		FUNC0(dev, "can't update INT reg\n");
		return ret;
	}

	return 0;
}