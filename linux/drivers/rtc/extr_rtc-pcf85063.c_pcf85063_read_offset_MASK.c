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
typedef  int u32 ;
struct pcf85063 {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int PCF85063_OFFSET_MODE ; 
 int /*<<< orphan*/  PCF85063_OFFSET_SIGN_BIT ; 
 long PCF85063_OFFSET_STEP0 ; 
 long PCF85063_OFFSET_STEP1 ; 
 int /*<<< orphan*/  PCF85063_REG_OFFSET ; 
 struct pcf85063* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 long FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev, long *offset)
{
	struct pcf85063 *pcf85063 = FUNC0(dev);
	long val;
	u32 reg;
	int ret;

	ret = FUNC1(pcf85063->regmap, PCF85063_REG_OFFSET, &reg);
	if (ret < 0)
		return ret;

	val = FUNC2(reg & ~PCF85063_OFFSET_MODE,
			    PCF85063_OFFSET_SIGN_BIT);

	if (reg & PCF85063_OFFSET_MODE)
		*offset = val * PCF85063_OFFSET_STEP1;
	else
		*offset = val * PCF85063_OFFSET_STEP0;

	return 0;
}