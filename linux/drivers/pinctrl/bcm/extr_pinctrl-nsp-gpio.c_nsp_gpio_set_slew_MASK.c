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
struct nsp_gpio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_CTRL ; 
 int /*<<< orphan*/  NSP_GPIO_SLEW_RATE_EN ; 
 int /*<<< orphan*/  FUNC0 (struct nsp_gpio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 

__attribute__((used)) static int FUNC1(struct nsp_gpio *chip, unsigned gpio, u32 slew)
{
	if (slew)
		FUNC0(chip, IO_CTRL, NSP_GPIO_SLEW_RATE_EN, gpio, true);
	else
		FUNC0(chip, IO_CTRL, NSP_GPIO_SLEW_RATE_EN, gpio, false);

	return 0;
}