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
struct pm8xxx_pin_data {int /*<<< orphan*/  reg; } ;
struct pm8xxx_gpio {int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int PM8XXX_BANK_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct pm8xxx_gpio *pctrl,
			     struct pm8xxx_pin_data *pin,
			     int bank,
			     u8 val)
{
	int ret;

	val |= PM8XXX_BANK_WRITE;
	val |= bank << 4;

	ret = FUNC1(pctrl->regmap, pin->reg, val);
	if (ret)
		FUNC0(pctrl->dev, "failed to write register\n");

	return ret;
}