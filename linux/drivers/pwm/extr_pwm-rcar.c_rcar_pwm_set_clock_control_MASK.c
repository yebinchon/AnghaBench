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
typedef  unsigned int u32 ;
struct rcar_pwm_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RCAR_PWMCR ; 
 unsigned int RCAR_PWMCR_CC0_MASK ; 
 unsigned int RCAR_PWMCR_CC0_SHIFT ; 
 unsigned int RCAR_PWMCR_CCMD ; 
 unsigned int FUNC0 (struct rcar_pwm_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rcar_pwm_chip*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct rcar_pwm_chip *rp,
				       unsigned int div)
{
	u32 value;

	value = FUNC0(rp, RCAR_PWMCR);
	value &= ~(RCAR_PWMCR_CCMD | RCAR_PWMCR_CC0_MASK);

	if (div & 1)
		value |= RCAR_PWMCR_CCMD;

	div >>= 1;

	value |= div << RCAR_PWMCR_CC0_SHIFT;
	FUNC1(rp, value, RCAR_PWMCR);
}