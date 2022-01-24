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
struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct ac100_rtc_dev {struct regmap* regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC100_ALM_INT_ENA ; 
 unsigned int AC100_ALM_INT_ENABLE ; 
 struct ac100_rtc_dev* FUNC0 (struct device*) ; 
 int FUNC1 (struct regmap*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct device *dev, unsigned int en)
{
	struct ac100_rtc_dev *chip = FUNC0(dev);
	struct regmap *regmap = chip->regmap;
	unsigned int val;

	val = en ? AC100_ALM_INT_ENABLE : 0;

	return FUNC1(regmap, AC100_ALM_INT_ENA, val);
}