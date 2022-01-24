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
struct notifier_block {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AB8500_SYS_CHARGER_CONTROL_REG ; 
 int /*<<< orphan*/  AB8500_SYS_CTRL1_BLOCK ; 
 int /*<<< orphan*/  EXTERNAL_CHARGER_DISABLE_REG_VAL ; 
 int /*<<< orphan*/  EXTERNAL_CHARGER_ENABLE_REG_VAL ; 
 int FUNC0 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 

__attribute__((used)) static int FUNC2(struct notifier_block *charger_nb,
				unsigned long event, void *data)
{
	int ret;
	struct device *dev = data;
	/*Toggle External charger control pin*/
	ret = FUNC0(dev, AB8500_SYS_CTRL1_BLOCK,
				  AB8500_SYS_CHARGER_CONTROL_REG,
				  EXTERNAL_CHARGER_DISABLE_REG_VAL);
	if (ret < 0) {
		FUNC1(dev, "write reg failed %d\n", ret);
		goto out;
	}
	ret = FUNC0(dev, AB8500_SYS_CTRL1_BLOCK,
				  AB8500_SYS_CHARGER_CONTROL_REG,
				  EXTERNAL_CHARGER_ENABLE_REG_VAL);
	if (ret < 0)
		FUNC1(dev, "Write reg failed %d\n", ret);

out:
	return ret;
}