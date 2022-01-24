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
struct ds1307 {int /*<<< orphan*/  regmap; int /*<<< orphan*/  flags; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DS1337_BIT_A1IE ; 
 int /*<<< orphan*/  DS1337_REG_CONTROL ; 
 int ENOTTY ; 
 int /*<<< orphan*/  HAS_ALARM ; 
 struct ds1307* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct device *dev, unsigned int enabled)
{
	struct ds1307		*ds1307 = FUNC0(dev);

	if (!FUNC2(HAS_ALARM, &ds1307->flags))
		return -ENOTTY;

	return FUNC1(ds1307->regmap, DS1337_REG_CONTROL,
				  DS1337_BIT_A1IE,
				  enabled ? DS1337_BIT_A1IE : 0);
}