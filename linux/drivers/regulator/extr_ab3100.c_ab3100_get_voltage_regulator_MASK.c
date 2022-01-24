#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct regulator_dev {TYPE_1__* desc; int /*<<< orphan*/  dev; } ;
struct ab3100_regulator {int /*<<< orphan*/  regreg; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int n_voltages; int* volt_table; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct ab3100_regulator* FUNC3 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC4(struct regulator_dev *reg)
{
	struct ab3100_regulator *abreg = FUNC3(reg);
	u8 regval;
	int err;

	/*
	 * For variable types, read out setting and index into
	 * supplied voltage list.
	 */
	err = FUNC0(abreg->dev, 0,
						abreg->regreg, &regval);
	if (err) {
		FUNC2(&reg->dev,
			 "failed to get regulator value in register %02x\n",
			 abreg->regreg);
		return err;
	}

	/* The 3 highest bits index voltages */
	regval &= 0xE0;
	regval >>= 5;

	if (regval >= reg->desc->n_voltages) {
		FUNC1(&reg->dev,
			"regulator register %02x contains an illegal voltage setting\n",
			abreg->regreg);
		return -EINVAL;
	}

	return reg->desc->volt_table[regval];
}