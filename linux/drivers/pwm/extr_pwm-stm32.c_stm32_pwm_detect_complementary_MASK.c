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
typedef  scalar_t__ u32 ;
struct stm32_pwm {int have_complementary_output; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIM_CCER ; 
 int /*<<< orphan*/  TIM_CCER_CC1NE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct stm32_pwm *priv)
{
	u32 ccer;

	/*
	 * If complementary bit doesn't exist writing 1 will have no
	 * effect so we can detect it.
	 */
	FUNC1(priv->regmap,
			   TIM_CCER, TIM_CCER_CC1NE, TIM_CCER_CC1NE);
	FUNC0(priv->regmap, TIM_CCER, &ccer);
	FUNC1(priv->regmap, TIM_CCER, TIM_CCER_CC1NE, 0);

	priv->have_complementary_output = (ccer != 0);
}