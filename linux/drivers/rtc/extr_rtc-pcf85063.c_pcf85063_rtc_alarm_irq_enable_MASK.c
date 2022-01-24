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

/* Variables and functions */
 int /*<<< orphan*/  PCF85063_CTRL2_AIE ; 
 int /*<<< orphan*/  PCF85063_REG_CTRL2 ; 
 struct pcf85063* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct device *dev,
					 unsigned int enabled)
{
	struct pcf85063 *pcf85063 = FUNC0(dev);

	return FUNC1(pcf85063->regmap, PCF85063_REG_CTRL2,
				  PCF85063_CTRL2_AIE,
				  enabled ? PCF85063_CTRL2_AIE : 0);
}