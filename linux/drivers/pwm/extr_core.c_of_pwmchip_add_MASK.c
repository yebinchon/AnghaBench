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
struct pwm_chip {int of_pwm_n_cells; TYPE_1__* dev; scalar_t__ of_xlate; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ of_pwm_simple_xlate ; 

__attribute__((used)) static void FUNC1(struct pwm_chip *chip)
{
	if (!chip->dev || !chip->dev->of_node)
		return;

	if (!chip->of_xlate) {
		chip->of_xlate = of_pwm_simple_xlate;
		chip->of_pwm_n_cells = 2;
	}

	FUNC0(chip->dev->of_node);
}