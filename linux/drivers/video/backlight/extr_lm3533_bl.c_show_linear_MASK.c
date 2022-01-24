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
typedef  int u8 ;
struct lm3533_bl {int /*<<< orphan*/  lm3533; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  LM3533_REG_CTRLBANK_AB_BCONF ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct lm3533_bl* FUNC0 (struct device*) ; 
 int FUNC1 (struct lm3533_bl*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct lm3533_bl *bl = FUNC0(dev);
	u8 val;
	u8 mask;
	int linear;
	int ret;

	ret = FUNC2(bl->lm3533, LM3533_REG_CTRLBANK_AB_BCONF, &val);
	if (ret)
		return ret;

	mask = 1 << (2 * FUNC1(bl) + 1);

	if (val & mask)
		linear = 1;
	else
		linear = 0;

	return FUNC3(buf, PAGE_SIZE, "%x\n", linear);
}