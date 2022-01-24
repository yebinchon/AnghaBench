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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_OHCIICR_USB_SUSPEND ; 
 int /*<<< orphan*/  AT91_SFR_OHCIICR ; 
 int FUNC0 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct regmap *regmap, u8 set)
{
	u32 regval;
	int ret;

	if (!regmap)
		return 0;

	ret = FUNC0(regmap, AT91_SFR_OHCIICR, &regval);
	if (ret)
		return ret;

	if (set)
		regval |= AT91_OHCIICR_USB_SUSPEND;
	else
		regval &= ~AT91_OHCIICR_USB_SUSPEND;

	FUNC1(regmap, AT91_SFR_OHCIICR, regval);

	return 0;
}