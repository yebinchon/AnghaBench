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
typedef  int /*<<< orphan*/  u8 ;
struct reset_controller_dev {int dummy; } ;
struct a10sr_reset {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int ALTR_A10SR_HPS_RST_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct a10sr_reset* FUNC4 (struct reset_controller_dev*) ; 

__attribute__((used)) static int FUNC5(struct reset_controller_dev *rcdev,
			      unsigned long id, bool assert)
{
	struct a10sr_reset *a10r = FUNC4(rcdev);
	int offset = FUNC2(id);
	u8 mask = FUNC0(offset);
	int index = ALTR_A10SR_HPS_RST_REG + FUNC1(offset);

	return FUNC3(a10r->regmap, index, mask, assert ? 0 : mask);
}