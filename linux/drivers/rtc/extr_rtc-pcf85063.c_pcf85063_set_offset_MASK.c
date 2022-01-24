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
struct pcf85063 {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;
typedef  int s8 ;

/* Variables and functions */
 int FUNC0 (long,int) ; 
 int ERANGE ; 
 int PCF85063_OFFSET_MODE ; 
 int PCF85063_OFFSET_STEP0 ; 
 int PCF85063_OFFSET_STEP1 ; 
 int /*<<< orphan*/  PCF85063_REG_OFFSET ; 
 unsigned int FUNC1 (long) ; 
 struct pcf85063* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, long offset)
{
	struct pcf85063 *pcf85063 = FUNC2(dev);
	s8 mode0, mode1, reg;
	unsigned int error0, error1;

	if (offset > PCF85063_OFFSET_STEP0 * 63)
		return -ERANGE;
	if (offset < PCF85063_OFFSET_STEP0 * -64)
		return -ERANGE;

	mode0 = FUNC0(offset, PCF85063_OFFSET_STEP0);
	mode1 = FUNC0(offset, PCF85063_OFFSET_STEP1);

	error0 = FUNC1(offset - (mode0 * PCF85063_OFFSET_STEP0));
	error1 = FUNC1(offset - (mode1 * PCF85063_OFFSET_STEP1));
	if (mode1 > 63 || mode1 < -64 || error0 < error1)
		reg = mode0 & ~PCF85063_OFFSET_MODE;
	else
		reg = mode1 | PCF85063_OFFSET_MODE;

	return FUNC3(pcf85063->regmap, PCF85063_REG_OFFSET, reg);
}