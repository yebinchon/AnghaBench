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
struct ds1307 {int /*<<< orphan*/  regmap; } ;
struct device_attribute {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  M41TXX_BIT_FT ; 
 int /*<<< orphan*/  M41TXX_REG_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct ds1307* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
				    struct device_attribute *attr,
				    const char *buf, size_t count)
{
	struct ds1307 *ds1307 = FUNC1(dev->parent);
	bool freq_test_en;
	int ret;

	ret = FUNC2(buf, &freq_test_en);
	if (ret) {
		FUNC0(dev, "Failed to store RTC Frequency Test attribute\n");
		return ret;
	}

	FUNC3(ds1307->regmap, M41TXX_REG_CONTROL, M41TXX_BIT_FT,
			   freq_test_en ? M41TXX_BIT_FT : 0);

	return count;
}