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
struct pcf2123_data {int /*<<< orphan*/  map; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned int OFFSET_COARSE ; 
 unsigned int OFFSET_MASK ; 
 int /*<<< orphan*/  OFFSET_SIGN_BIT ; 
 long OFFSET_STEP ; 
 int /*<<< orphan*/  PCF2123_REG_OFFSET ; 
 struct pcf2123_data* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev, long *offset)
{
	struct pcf2123_data *pcf2123 = FUNC0(dev);
	int ret, val;
	unsigned int reg;

	ret = FUNC1(pcf2123->map, PCF2123_REG_OFFSET, &reg);
	if (ret)
		return ret;

	val = FUNC2((reg & OFFSET_MASK), OFFSET_SIGN_BIT);

	if (reg & OFFSET_COARSE)
		val *= 2;

	*offset = ((long)val) * OFFSET_STEP;

	return 0;
}