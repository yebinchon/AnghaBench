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
struct act8865 {int /*<<< orphan*/  off_mask; int /*<<< orphan*/  off_reg; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  act8865_i2c_client ; 
 struct act8865* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void)
{
	struct act8865 *act8865;

	act8865 = FUNC0(act8865_i2c_client);
	FUNC1(act8865->regmap, act8865->off_reg, act8865->off_mask);
	while (1);
}