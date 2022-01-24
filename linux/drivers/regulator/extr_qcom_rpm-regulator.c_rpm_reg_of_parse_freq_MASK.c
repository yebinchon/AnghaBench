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
typedef  int const u32 ;
struct qcom_rpm_reg {TYPE_1__* parts; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  freq; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int FUNC2 (struct device_node*,char const*,int const*) ; 
 int /*<<< orphan*/  FUNC3 (struct qcom_rpm_reg*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
				 struct device_node *node,
				 struct qcom_rpm_reg *vreg)
{
	static const int freq_table[] = {
		19200000, 9600000, 6400000, 4800000, 3840000, 3200000, 2740000,
		2400000, 2130000, 1920000, 1750000, 1600000, 1480000, 1370000,
		1280000, 1200000,

	};
	const char *key;
	u32 freq;
	int ret;
	int i;

	key = "qcom,switch-mode-frequency";
	ret = FUNC2(node, key, &freq);
	if (ret) {
		FUNC1(dev, "regulator requires %s property\n", key);
		return -EINVAL;
	}

	for (i = 0; i < FUNC0(freq_table); i++) {
		if (freq == freq_table[i]) {
			FUNC3(vreg, &vreg->parts->freq, i + 1);
			return 0;
		}
	}

	FUNC1(dev, "invalid frequency %d\n", freq);
	return -EINVAL;
}