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
struct tegra_pwm_chip {scalar_t__ regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,scalar_t__) ; 

__attribute__((used)) static inline void FUNC1(struct tegra_pwm_chip *chip, unsigned int num,
			     unsigned long val)
{
	FUNC0(val, chip->regs + (num << 4));
}